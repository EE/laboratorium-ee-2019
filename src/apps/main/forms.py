from django import forms
from django.conf import settings
from django.core.mail import EmailMessage
from django.utils.translation import gettext as _
from django.utils.safestring import mark_safe
from django.utils.html import escape

from .models import InfoPage


class ConsentsMixin:
    def __init__(self, request, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # generate consent checkbox based on info pages
        consents = InfoPage.objects.live().filter(consent_required=True).descendant_of(
            request.site.root_page,
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


class ContactForm(ConsentsMixin, forms.Form):
    from_email = forms.EmailField(
        required=True,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('your email')}),
    )
    subject = forms.CharField(
        required=True,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('subject')}),
    )
    message = forms.CharField(
        required=True,
        label='',
        widget=forms.Textarea(attrs={'placeholder': _('how can we help?'), 'rows': 3}),
    )

    def create_email_message(self):
        subject = self.cleaned_data['subject']
        from_email = self.cleaned_data['from_email']
        message = self.cleaned_data['message']
        to_email = settings.CONTACT_EMAIL
        return EmailMessage(
            subject, message,
            settings.DEFAULT_FROM_EMAIL,
            [to_email], reply_to=[from_email],
        )

    def send_mail(self):
        email = self.create_email_message()
        email.send()


class RecruitmentContactForm(ConsentsMixin, forms.Form):
    reply_to = forms.CharField(
        required=True,
        label='',
        widget=forms.TextInput(attrs={'placeholder': _('adres email lub numer telefonu')}),
    )
    subject = forms.CharField(
        widget=forms.HiddenInput(),
    )
    message = forms.CharField(
        required=False,
        label='',
        widget=forms.Textarea(attrs={'placeholder': _('opcjonalna notatka o sobie'), 'rows': 3}),
    )
    attachment = forms.FileField(allow_empty_file=True, required=False, label=_('załącz CV'))

    def __init__(self, request, *args, **kwargs):
        super().__init__(request, *args, **kwargs)
        self.request = request

    def create_email_message(self):
        email = EmailMessage(
            self.cleaned_data['subject'],
            self.cleaned_data['message'],
            settings.DEFAULT_FROM_EMAIL,
            [settings.CONTACT_EMAIL],
            reply_to=[self.cleaned_data['reply_to']],
        )

        attachment = self.request.FILES.get('attachment')
        if attachment:
            email.attach(attachment.name, attachment.read(), attachment.content_type)

        return email

    def send_mail(self):
        email = self.create_email_message()
        email.send()
