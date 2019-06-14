from django import forms
from django.conf import settings
from django.core.mail import EmailMessage, BadHeaderError
from django.utils.translation import gettext as _
from django.utils.safestring import mark_safe


class ContactForm(forms.Form):
    from_email = forms.EmailField(required=True, widget=forms.TextInput(attrs={'placeholder': _('your email')}))
    subject = forms.CharField(required=True, widget=forms.TextInput(attrs={'placeholder': _('choose subject')}))
    message = forms.CharField(widget=forms.Textarea(attrs={'placeholder': _('how can we help?')}), required=True)
    terms_accepted = forms.BooleanField(required=True, label=mark_safe(_(
        'Zapoznałem sie z i akceptuję <a href="#">Regulamin serwisu</a> oraz <a href="#">Politykę prywatności</a>',
    )))

    def __init__(self, request, *args, **kwargs):
        self.request = request
        super().__init__(*args, **kwargs)

    def create_email_message(self):
        subject = self.cleaned_data['subject']
        from_email = self.cleaned_data['from_email']
        message = self.cleaned_data['message']
        to_email = settings.CONTACT_EMAIL
        return EmailMessage(
            subject, message, from_email, [to_email], reply_to=[from_email]
        )

    def send_mail(self):
        email = self.create_email_message()
        try:
            email.send()
        except BadHeaderError:
            return {'success': False, 'message': 'Invalid header found.'}
        return {'success': True}


class AttachmentContactForm(ContactForm):
    attachment = forms.FileField(allow_empty_file=True, required=False, label=_('załącznik'))

    field_order = [
        'from_email',
        'subject',
        'message',
        'attachment',
        'terms_accepted',
    ]

    def create_email_message(self):
        email = super().create_email_message()
        attachment = self.request.FILES.get('attachment')
        if attachment:
            email.attach(attachment.name, attachment.read(), attachment.content_type)
        return email
