from django.db import models

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel

from src.apps.projects.models import SpecializationPage


class HomePage(Page):
    header = models.CharField(max_length=255)

    content_panels = Page.content_panels + [
        FieldPanel('header'),
    ]

    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)
