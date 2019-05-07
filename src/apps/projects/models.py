from django.db import models

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel
from wagtail.search import index


class SpecializationPage(Page):
    how_we_work = models.TextField()

    search_fields = Page.search_fields + [
        index.SearchField('how_we_work'),
    ]
    content_panels = Page.content_panels + [
        FieldPanel('how_we_work'),
    ]

    @property
    def projects(self):
        return ProjectPage.objects.live().descendant_of(self)


class ProjectPage(Page):
    subtitle = models.CharField(max_length=255, blank=True)

    search_fields = Page.search_fields + [
        index.SearchField('subtitle'),
    ]
    content_panels = Page.content_panels + [
        FieldPanel('subtitle'),
    ]

    parent_page_types = [SpecializationPage]

    @property
    def similar_projects(self):
        return ProjectPage.objects.live().descendant_of(self.get_parent()).exclude(id=self.id)
