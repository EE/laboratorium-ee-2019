import random

from django.db import models
from django.utils.translation import gettext as _

from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey
from taggit.models import TaggedItemBase
from wagtail.core import blocks
from wagtail.core.fields import StreamField, RichTextField
from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel, StreamFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.search import index

from src.apps.main.blocks import Tile, TileWithDescription


class SpecializationIndexPage(Page):
    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)

    parent_page_types = ['main.HomePage']
    subpage_types = ['SpecializationPage']


class SpecializationPage(Page):
    short_description = models.TextField()
    background_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    how_we_work = StreamField([
        ('text', blocks.CharBlock(template='projects/blocks/paragraph.html')),
        ('tiles_list', blocks.ListBlock(Tile(), template='projects/blocks/tiles_list.html')),
    ])
    case_study = StreamField([
        ('heading', blocks.CharBlock(template='projects/blocks/heading.html')),
        ('tiles_list', blocks.ListBlock(Tile(), template='projects/blocks/tiles_list.html')),
    ], null=True)

    tools = StreamField([
        (
            'tiles_with_description_list',
            blocks.ListBlock(TileWithDescription(), template='projects/blocks/tiles_list.html'),
        ),
    ], null=True)

    content_panels = Page.content_panels + [
        FieldPanel('short_description'),
        ImageChooserPanel('background_image'),
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
        """Returns two random projects related to given specialization"""
        ids = list(self.projects.values_list('id', flat=True))
        if len(ids) <= 2:
            return self.projects[:2]
        two_random_ids = random.sample(ids, 2)
        return self.projects.filter(id__in=two_random_ids)


class TopicPage(Page):
    """Topic is a classification of work orthogonal to specializations.
    Examples for topics are: "fighting smog", "design for elderly"."""
    marked = models.BooleanField(
        default=False,
        help_text=_('If True, this topic would be visible on HomePage.'),
    )
    background_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    content = RichTextField()

    content_panels = Page.content_panels + [
        FieldPanel('marked'),
        ImageChooserPanel('background_image'),
        FieldPanel('content'),
    ]


class ProjectPage(Page):
    short_name = models.CharField(max_length=32, blank=True, default='', help_text=_('Brief name of the project'))
    self_initiated = models.BooleanField(default=False)
    subtitle = models.CharField(max_length=255, blank=True)
    icon = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    background_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    topics = models.ManyToManyField(TopicPage, blank=True, related_name='projects')

    challenge = RichTextField(null=True)
    process = StreamField([
        ('tiles_list', blocks.ListBlock(Tile())),
    ], null=True)
    quote = RichTextField(null=True)

    search_fields = Page.search_fields + [
        index.SearchField('subtitle'),
    ]
    content_panels = Page.content_panels + [
        FieldPanel('short_name'),
        FieldPanel('self_initiated'),
        FieldPanel('subtitle'),
        ImageChooserPanel('icon'),
        ImageChooserPanel('background_image'),
        InlinePanel('metrics', heading="Metrics"),
        FieldPanel('challenge'),
        StreamFieldPanel('process'),
        FieldPanel('quote'),
    ]

    parent_page_types = ['SpecializationPage']
    subpage_types = []

    @property
    def short_name_or_full(self):
        """If project does not have any short_name declared, return full name"""
        return self.short_name or self.title

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
    short_description = models.CharField(
        max_length=128,
        help_text=_('Description shown on TeamIndex page.'),
    )
    long_description = models.CharField(
        max_length=516,
        help_text=_('More comprehensive description visible on Home Page'),
    )
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
        FieldPanel('short_description'),
        FieldPanel('long_description'),
        ImageChooserPanel('photo'),
        FieldPanel('specializations'),
    ]

    parent_page_types = ['TeamIndexPage']
    subpage_types = []


class ProjectMetric(Orderable, models.Model):
    project = ParentalKey(ProjectPage, related_name='metrics', on_delete=models.CASCADE)
    value = models.CharField(max_length=31)
    property_name = models.CharField(max_length=63)

    panels = [
        FieldPanel('value'),
        FieldPanel('property_name'),
    ]
