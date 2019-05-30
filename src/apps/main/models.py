import random

from django.db import models
from django.apps import apps
from django.db.models import Max
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
from wagtail.snippets.models import register_snippet

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

    parent_page_types = ['wagtailcore.page']  # allow root page only
    subpage_types = [
        'NewsIndexPage', 'JobOfferIndexPage', 'projects.SpecializationIndexPage', 'projects.TeamIndexPage'
    ]

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

    @property
    def random_team_member(self):
        """
        Every hit on home page should present a randomly picked team member. This method of random selection is based
        on https://books.agiliq.com/projects/django-orm-cookbook/en/latest/random.html
        Should be more efficient than Model.objects.order_by("?").first()
        """
        TeamMember = apps.get_model('projects', 'TeamMember')
        team_member_queryset = TeamMember.objects.live().descendant_of(self)
        max_id = team_member_queryset.aggregate(max_id=Max("id"))['max_id']
        while True:
            pk = random.randint(1, max_id)
            team_member = team_member_queryset.filter(pk=pk).first()
            if team_member:
                return team_member.specific


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

    @property
    def latest_news(self):
        return self.news.order_by('-publication_date')[:3]

    @property
    def older_news(self):
        return self.news.order_by('-publication_date')[3:]

    parent_page_types = ['HomePage']
    subpage_types = ['NewsPage']


class NewsPage(Page):
    headline = models.CharField(max_length=500)
    body = RichTextField()
    photo = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    publication_date = models.DateField(auto_now_add=True)

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


@register_snippet
class RodoPassAdvert(models.Model):
    page = ParentalKey('HomePage', related_name='rodo_pass', unique=True)
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=256)
    url = models.URLField()
    button_text = models.CharField(max_length=50)

    panels = [
        FieldPanel('page'),
        FieldPanel('title'),
        FieldPanel('description'),
        FieldPanel('url'),
        FieldPanel('button_text'),
    ]

    def __str__(self):
        return f'{self.page} Rodo Pass'


@register_snippet
class Footer(models.Model):
    page = ParentalKey('HomePage', related_name='footer', unique=True)
    contact = RichTextField()
    address = RichTextField()
    how_we_work = RichTextField()
    privacy_policy = models.URLField()

    panels = [
        FieldPanel('page'),
        FieldPanel('contact'),
        FieldPanel('address'),
        FieldPanel('how_we_work'),
        FieldPanel('privacy_policy'),
    ]

    def __str__(self):
        return f'{self.page} footer'

    @property
    def specializations(self):
        return SpecializationPage.objects.live()
