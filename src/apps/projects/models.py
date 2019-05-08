from django.db import models

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel
from wagtail.search import index
from modelcluster.fields import ParentalKey


class SpecializationIndexPage(Page):
    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)


class SpecializationPage(Page):
    how_we_work = models.TextField()

    search_fields = Page.search_fields + [
        index.SearchField('how_we_work'),
    ]
    content_panels = Page.content_panels + [
        FieldPanel('how_we_work'),
    ]

    parent_page_types = [SpecializationIndexPage]

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
        InlinePanel('metrics'),
    ]

    parent_page_types = [SpecializationPage]

    @property
    def similar_projects(self):
        return ProjectPage.objects.live().descendant_of(self.get_parent()).exclude(id=self.id)


class ProjectMetric(Orderable, models.Model):
    project = ParentalKey(ProjectPage, related_name='metrics', on_delete=models.CASCADE)
    value = models.CharField(max_length=31)
    property_name = models.CharField(max_length=63)

    panels = [
        FieldPanel('value'),
        FieldPanel('property_name'),
    ]
