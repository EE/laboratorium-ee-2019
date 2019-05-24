from django.db import models
from wagtail.core import blocks
from wagtail.core.fields import StreamField, RichTextField

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel, StreamFieldPanel
from wagtail.search import index
from modelcluster.fields import ParentalKey

from src.apps.main.blocks import Tile, TileWithDescription


class SpecializationIndexPage(Page):
    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)


class SpecializationPage(Page):
    how_we_work = StreamField([
        ('text', blocks.CharBlock()),
        ('tiles_list', blocks.ListBlock(Tile())),
    ])
    case_study = StreamField([
        ('heading', blocks.CharBlock()),
        ('tiles_list', blocks.ListBlock(Tile())),
    ], null=True)

    tools = StreamField([
        ('tiles_with_description_list', blocks.ListBlock(TileWithDescription())),
    ], null=True)

    content_panels = Page.content_panels + [
        StreamFieldPanel('how_we_work'),
        StreamFieldPanel('case_study'),
        StreamFieldPanel('tools'),
    ]

    parent_page_types = [SpecializationIndexPage]

    @property
    def projects(self):
        return ProjectPage.objects.live().descendant_of(self)


class ProjectPage(Page):
    subtitle = models.CharField(max_length=255, blank=True)
    challenge = RichTextField(null=True)
    process = StreamField([
        ('tiles_list', blocks.ListBlock(Tile())),
    ], null=True)
    quote = RichTextField(null=True)

    search_fields = Page.search_fields + [
        index.SearchField('subtitle'),
    ]
    content_panels = Page.content_panels + [
        FieldPanel('subtitle'),
        FieldPanel('challenge'),
        StreamFieldPanel('process'),
        FieldPanel('quote'),
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
