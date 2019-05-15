from django.db import models

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel


class HomePage(Page):
    header = models.CharField(max_length=255)

    content_panels = Page.content_panels + [
        FieldPanel('header'),
    ]
