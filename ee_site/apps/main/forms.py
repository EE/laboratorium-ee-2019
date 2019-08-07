from captcha.fields import ReCaptchaField
from captcha.widgets import ReCaptchaV2Checkbox
from django import forms
from django.conf import settings
from django.core.mail import EmailMessage
from django.utils.translation import gettext as _


RECRUITMENT_TYPE_DEFAULT = 'default'
RECRUITMENT_TYPE_LONGTERM = 'longterm'
RECRUITMENT_TYPE_IMMEDIATE = 'immediate'


recaptcha_kwargs = dict(
    required=True,
    label='',
    widget=ReCaptchaV2Checkbox(
        attrs={
            'data-theme': 'dark',
        },
    ),
)


class ContactForm(forms.Form):
    reply_to = forms.CharField(
        required=True,
        label=_('email or phone number'),
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
    # hidden field describing where to send recruitment messages
    recruitment_type = forms.ChoiceField(
        required=False,
        choices=[
            (RECRUITMENT_TYPE_LONGTERM, _("Longterm")),
            (RECRUITMENT_TYPE_IMMEDIATE, _("Immediate")),
        ]
    )
    recruitment_position = forms.CharField(
        required=False,
        label=_('podaj stanowisko'),
    )
    organization_name = forms.CharField(
        required=False,
        label=_('nazwa firmy / organizacji'),
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
    terms_accepted = forms.BooleanField(
        required=True,
    )
    recruitment_terms_accepted = forms.BooleanField(
        required=False,
    )
    captcha = ReCaptchaField(**recaptcha_kwargs)

    def __init__(self, request, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.request = request

        # lazy import to avoid circular, unresolvable dependencies
        from .models import ContactForm as ContactFormModel

        try:
            contact_form = ContactFormModel.objects.get(site=request.site)
            self.fields['terms_accepted'].label = contact_form.terms_accepted_label
            self.fields['recruitment_terms_accepted'].label = contact_form.recruitment_terms_accepted_label
        except ContactFormModel.DoesNotExist:
            pass

    def clean(self):
        cleaned_data = super().clean()

        subject = cleaned_data.get('subject')
        if not subject:
            return cleaned_data
        extra_required_fields = {
            'offer': ['organization_name'],
            'recruitment': ['recruitment_position', 'recruitment_terms_accepted'],
            'other': ['message'],
        }[subject]

        for field in extra_required_fields:
            if not cleaned_data.get(field):
                msg = forms.ValidationError(_("This field is required."))
                self.add_error(field, msg)

        return cleaned_data

    def process_offer(self):
        EmailMessage(
            _('Kontakt w sprawie oferty, organizacja {}').format(self.cleaned_data['organization_name']),
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.CONTACT_EMAIL],
            reply_to=[self.cleaned_data['reply_to']],
        ).send()

    def process_recruitment(self):
        recruitment_type = self.cleaned_data['recruitment_type']
        if not recruitment_type:
            recruitment_type = RECRUITMENT_TYPE_DEFAULT
        email = EmailMessage(
            _('Kontakt w sprawie rekrutacji na stanowisko {}').format(self.cleaned_data['recruitment_position']),
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.RECRUITMENT_EMAILS[recruitment_type]],
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
