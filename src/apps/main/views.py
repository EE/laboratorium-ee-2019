from django.urls import reverse
from django.views.generic import FormView, TemplateView

from src.apps.main.forms import ContactForm


class SendMailView(FormView):
    form_class = ContactForm
    template_name = 'main/send_mail.html'

    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs.update({'request': self.request})
        return kwargs

    def form_valid(self, form):
        form.process()
        return super().form_valid(form)

    def get_success_url(self):
        return reverse('send_mail_done')


class SendMailSuccessView(TemplateView):
    template_name = "main/send_mail_done.html"
