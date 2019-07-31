from django.urls import reverse
from django.views.generic import FormView, TemplateView
from wagtail.images import get_image_model
from django.views.generic import View
from django.shortcuts import get_object_or_404
from wagtail.images.models import SourceImageIOError
from django.http import HttpResponse, HttpResponseRedirect

from ee_site.apps.main.forms import ContactForm


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


# loosely based on https://github.com/wagtail/wagtail/blob/master/wagtail/images/views/serve.py
class DynamicRenditionView(View):
    model = get_image_model()
    size_min = 128  # minimum dimension
    size_grow_ratio = 2 ** 0.5  # subsequent possible sizes are in geometric progression and this is the common ratio

    def get_rendition_size(self, requested_size, image_size):
        size = self.size_min
        if size > image_size:
            return image_size

        while size < requested_size:
            size = round(size * self.size_grow_ratio)
            if size > image_size:
                return image_size

        return size

    def get(self, request, image_id, width, height):
        image = get_object_or_404(self.model, id=image_id)

        width = self.get_rendition_size(int(width), image.width)
        height = self.get_rendition_size(int(height), image.height)
        filter_spec = f'fill-{width}x{height}-c100'

        # Get/generate the rendition
        try:
            rendition = image.get_rendition(filter_spec)
        except SourceImageIOError:
            return HttpResponse("Source image file not found", content_type='text/plain', status=410)

        return HttpResponseRedirect(rendition.url)
