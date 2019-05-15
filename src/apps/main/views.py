from django.http import HttpResponse
from django.urls import reverse
from django.views.generic import FormView

from src.apps.main.forms import ContactForm, AttachmentContactForm


class SendMailView(FormView):
    form_class = ContactForm
    template_name = 'email_form.html'

    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs.update({'request': self.request})
        return kwargs

    def form_valid(self, form):
        response = form.send_mail()
        if not response.get('success'):
            return HttpResponse(f"Could not send email. Reason: {response.get('message')}")
        return super().form_valid(form)

    def get_success_url(self):
        return reverse('thanks')


class SendMailWithAttachmentView(SendMailView):
    form_class = AttachmentContactForm
    template_name = 'email_with_attachment_form.html'


def thanks(request):
    return HttpResponse('Thank you for your message.')
