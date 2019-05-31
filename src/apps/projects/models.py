import textwrap

from django.db import models
from modelcluster.contrib.taggit import ClusterTaggableManager
from taggit.models import TaggedItemBase
from wagtail.core import blocks
from wagtail.core.fields import StreamField, RichTextField

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel, StreamFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.search import index
from modelcluster.fields import ParentalKey

from src.apps.main.blocks import Tile, TileWithDescription


class SpecializationIndexPage(Page):
    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)

    parent_page_types = ['main.HomePage']
    subpage_types = ['SpecializationPage']


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

    parent_page_types = ['SpecializationIndexPage']
    subpage_types = ['ProjectPage']

    @property
    def projects(self):
        return ProjectPage.objects.live().descendant_of(self)

    @property
    def two_projects(self):
        return self.projects[:2]


class ProjectPage(Page):
    self_initiated = models.BooleanField(default=False)
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
        FieldPanel('self_initiated'),
        FieldPanel('subtitle'),
        InlinePanel('metrics', heading="Metrics"),
        FieldPanel('challenge'),
        StreamFieldPanel('process'),
        FieldPanel('quote'),
    ]

    parent_page_types = ['SpecializationPage']
    subpage_types = []

    @property
    def similar_projects(self):
        return ProjectPage.objects.live().descendant_of(self.get_parent()).exclude(id=self.id)


class TeamIndexPage(Page):
    who_we_are = RichTextField()
    our_values = StreamField([
        ('description', blocks.RichTextBlock()),
        ('tiles_list', blocks.ListBlock(Tile())),
    ])

    content_panels = Page.content_panels + [
        FieldPanel('who_we_are'),
        StreamFieldPanel('our_values'),
    ]

    parent_page_types = ['main.HomePage']
    subpage_types = ['TeamMember']

    @property
    def team_members(self):
        return TeamMember.objects.live().descendant_of(self)


class TeamMemberSpecializationTag(TaggedItemBase):
    content_object = ParentalKey('TeamMember', on_delete=models.CASCADE, related_name='tagged_items')


class TeamMember(Page):
    name = models.CharField(max_length=128)
    description = models.CharField(max_length=516)
    photo = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    specializations = ClusterTaggableManager(through=TeamMemberSpecializationTag, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('name'),
        FieldPanel('description'),
        ImageChooserPanel('photo'),
        FieldPanel('specializations'),
    ]

    parent_page_types = ['TeamIndexPage']
    subpage_types = []

    @property
    def trunc_description(self):
        """Return a short version of team member description. I takes the first sentence and if its longer than 100
        characters will be truncated not on word."""
        return textwrap.shorten(self.description.split('.')[0], width=100, placeholder='...')


class ProjectMetric(Orderable, models.Model):
    project = ParentalKey(ProjectPage, related_name='metrics', on_delete=models.CASCADE)
    value = models.CharField(max_length=31)
    property_name = models.CharField(max_length=63)

    panels = [
        FieldPanel('value'),
        FieldPanel('property_name'),
    ]
