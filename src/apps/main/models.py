from django.db import models
from django.apps import apps
from modelcluster.fields import ParentalKey
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import (
    FieldPanel,
    StreamFieldPanel,
    InlinePanel,
    MultiFieldPanel,
)
from wagtail.images.edit_handlers import ImageChooserPanel

from src.apps.main.blocks import Tile
from src.apps.projects.models import SpecializationPage


class HomePage(Page):
    header = models.CharField(max_length=255)
    specializations_headline = models.CharField(max_length=128)
    r_and_d_center_headline = models.CharField(
        max_length=128,
        null=True,
        blank=True
    )
    r_and_d_center_body = models.CharField(
        max_length=256,
        null=True,
        blank=True
    )

    content_panels = Page.content_panels + [
        FieldPanel('header'),
        FieldPanel('specializations_headline'),
        MultiFieldPanel([
            FieldPanel('r_and_d_center_headline', classname="full"),
            FieldPanel('r_and_d_center_body'),
        ], heading="R&D center section"),
        InlinePanel('cooperators_logos', heading="We work with")
    ]

    parent_page_types = []
    subpage_types = ['NewsIndexPage', 'JobOfferIndexPage', 'projects.SpecializationIndexPage']

    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)

    @property
    def latest_articles(self):
        """Returns 3 latest articles"""
        return NewsPage.objects.live().order_by('-publication_date')[:3]

    @property
    def our_initiatives(self):
        ProjectPage = apps.get_model('projects', 'ProjectPage')
        return ProjectPage.objects.live().filter(self_initiated=True)


class CooperatorLogo(Orderable):
    page = ParentalKey('main.HomePage', on_delete=models.CASCADE, related_name='cooperators_logos')
    image = models.ForeignKey(
        'wagtailimages.Image',
        on_delete=models.CASCADE,
        related_name='coop_logos'
    )

    panels = [
        ImageChooserPanel('image'),
    ]


class NewsIndexPage(Page):
    @property
    def news(self):
        return NewsPage.objects.live().descendant_of(self)

    parent_page_types = ['HomePage']
    subpage_types = ['NewsPage']


class NewsPage(Page):
    headline = models.CharField(max_length=500)
    photo = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    publication_date = models.DateField(auto_now_add=True)
    body = RichTextField()

    content_panels = Page.content_panels + [
        FieldPanel('headline'),
        FieldPanel('body', classname="full"),
        ImageChooserPanel('photo'),
    ]

    parent_page_types = ['NewsIndexPage']
    subpage_types = []


class JobOfferIndexPage(Page):
    cooperation = models.CharField(max_length=500)
    recruitment = StreamField([
        ('text', blocks.CharBlock()),
        ('tiles_list', blocks.ListBlock(Tile())),
    ])

    @property
    def offers(self):
        return JobOfferPage.objects.live().descendant_of(self)

    content_panels = Page.content_panels + [
        FieldPanel('cooperation'),
        StreamFieldPanel('recruitment'),
    ]

    parent_page_types = ['HomePage']
    subpage_types = ['JobOfferPage']


class JobOfferPage(Page):
    salary = models.CharField(max_length=50)
    employment_form = models.CharField(max_length=50)
    body = RichTextField()

    content_panels = Page.content_panels + [
        FieldPanel('salary'),
        FieldPanel('employment_form'),
        FieldPanel('body', classname="full"),
    ]

    parent_page_types = ['JobOfferIndexPage']
    subpage_types = []
