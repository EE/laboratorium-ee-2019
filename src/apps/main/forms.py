from django import forms
from django.conf import settings
from django.core.mail import EmailMessage, BadHeaderError


class ContactForm(forms.Form):
    from_email = forms.EmailField(required=True, widget=forms.TextInput(attrs={'placeholder': 'your email'}))
    subject = forms.CharField(required=True, widget=forms.TextInput(attrs={'placeholder': 'choose subject'}))
    message = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'how can we help?'}), required=True)

    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop("request")
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
    attachment = forms.FileField(allow_empty_file=True, required=False)

    def create_email_message(self):
        email = super().create_email_message()
        attachment = self.request.FILES.get('attachment')
        if attachment:
            email.attach(attachment.name, attachment.read(), attachment.content_type)
        return email

