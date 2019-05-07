from django.conf import settings
from django.core.mail import EmailMessage, BadHeaderError
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.views.generic.base import View

from src.apps.main.forms import ContactForm


class SendMail(View):
    form_class = ContactForm

    def get(self, request, *args, **kwargs):
        form = self.form_class()
        return render(request, 'email_form.html', {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            subject = form.cleaned_data['subject']
            from_email = form.cleaned_data['from_email']
            message = form.cleaned_data['message']
            to_email = settings.CONTACT_EMAIL
            email = EmailMessage(
                subject, message, from_email, [to_email], reply_to=[from_email]
            )
            try:
                email.send()
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
        return redirect('thanks')


def thanks(request):
    return HttpResponse('Thank you for your message.')
