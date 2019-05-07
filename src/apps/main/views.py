from django.conf import settings
from django.core.mail import EmailMessage, BadHeaderError
from django.http import HttpResponse
from django.shortcuts import redirect
from django.views.generic import FormView

from src.apps.main.forms import ContactForm, AttachmentContactForm


class SendMailView(FormView):
    form_class = ContactForm
    template_name = 'email_form.html'

    def create_email_message(self, form):
        subject = form.cleaned_data['subject']
        from_email = form.cleaned_data['from_email']
        message = form.cleaned_data['message']
        to_email = settings.CONTACT_EMAIL
        return EmailMessage(
            subject, message, from_email, [to_email], reply_to=[from_email]
        )

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            email = self.create_email_message(form)
            try:
                email.send()
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
        else:
            return HttpResponse(f'Form contains errors: {form.errors}')
        return redirect('thanks')


class SendMailWithAttachmentView(SendMailView):
    form_class = AttachmentContactForm
    template_name = 'email_with_attachment_form.html'

    def create_email_message(self, form):
        email = super().create_email_message(form)
        attachment = self.request.FILES.get('attachment')
        if attachment:
            email.attach(attachment.name, attachment.read(), attachment.content_type)
        return email


def thanks(request):
    return HttpResponse('Thank you for your message.')
