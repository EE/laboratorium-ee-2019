from captcha.fields import ReCaptchaField
from captcha.widgets import ReCaptchaV2Checkbox
from django import forms
from django.conf import settings
from django.core.mail import EmailMessage
from django.utils.translation import gettext as _
from django.utils.safestring import mark_safe
from django.utils.html import escape

from .models import InfoPage


class ConsentsMixin:
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # generate consent checkbox based on info pages
        consents = InfoPage.objects.live().filter(consent_required=True).descendant_of(
            self.request.site.root_page,
        )
        if consents:
            consents_html = ', '.join([
                '<a href="{doc_url}" target=\"_blank\">{doc_title}</a>'.format(
                    doc_url=consent.url,
                    doc_title=escape(consent.title),
                )
                for consent in consents
            ])
            self.fields['terms_accepted'] = forms.BooleanField(
                required=True,
                label=mark_safe(
                    _(
                        "Zapoznałem się z dokumentami {} i akceptuję ich postanowienia."
                    ).format(consents_html),
                ),
            )


recaptcha_kwargs = dict(
    required=True,
    label='',
    widget=ReCaptchaV2Checkbox(
        attrs={
            'data-theme': 'dark',
        },
    ),
)


class ContactForm(ConsentsMixin, forms.Form):
    reply_to = forms.CharField(
        required=True,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('email or phone number')}),
    )
    subject = forms.ChoiceField(
        required=True,
        label='',
        choices=[
            ('', _('wybierz temat')),
            ('offer', _('Offer')),
            ('recruitment', _('Recruitment')),
            ('other', _('Other')),
        ]
    )
    recruitment_position = forms.CharField(
        required=False,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('podaj stanowisko')}),
    )
    organization_name = forms.CharField(
        required=False,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('nazwa firmy / organizacji')}),
    )
    message = forms.CharField(
        required=False,
        label='',
        widget=forms.Textarea(attrs={'placeholder': _('how can we help?'), 'rows': 3}),
    )
    attachment = forms.FileField(
        allow_empty_file=True,
        required=False,
        label=_('załącz CV'),
    )
    captcha = ReCaptchaField(**recaptcha_kwargs)

    def __init__(self, request, *args, **kwargs):
        self.request = request
        super().__init__(*args, **kwargs)

    def clean(self):
        subject = self.cleaned_data['subject']
        extra_required_fields = {
            'offer': ['organization_name'],
            'recruitment': ['recruitment_position'],
            'other': ['message'],
        }[subject]

        for field in extra_required_fields:
            if not self.cleaned_data.get(field):
                msg = forms.ValidationError(_("This field is required."))
                self.add_error(field, msg)

        return self.cleaned_data

    def process_offer(self):
        EmailMessage(
            _('Kontakt w sprawie oferty, organizacja {}').format(self.cleaned_data['organization_name']),
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.CONTACT_EMAIL],
            reply_to=[self.cleaned_data['reply_to']],
        ).send()

    def process_recruitment(self):
        email = EmailMessage(
            _('Kontakt w sprawie rekrutacji na stanowisko {}').format(self.cleaned_data['recruitment_position']),
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.CONTACT_EMAIL],
            reply_to=[self.cleaned_data['reply_to']],
        )

        attachment = self.request.FILES.get('attachment')
        if attachment:
            email.attach(attachment.name, attachment.read(), attachment.content_type)

        email.send()

    def process_other(self):
        EmailMessage(
            _('Kontakt w innej sprawie'),
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.CONTACT_EMAIL],
            reply_to=[self.cleaned_data['reply_to']],
        ).send()

    def process(self):
        handlers = {
            'offer': self.process_offer,
            'recruitment': self.process_recruitment,
            'other': self.process_other,
        }
        subject = self.cleaned_data['subject']
        return handlers[subject]()
