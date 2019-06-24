import random

from django.db import models
from django.apps import apps
from django.db.models import Max
from django.utils.translation import gettext as _
from modelcluster.fields import ParentalKey
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    PageChooserPanel,
    StreamFieldPanel,
)
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.snippets.models import register_snippet

from src.apps.main.blocks import Tile
from src.apps.projects.models import SpecializationPage, TopicPage


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
        'NewsIndexPage', 'JobOfferIndexPage', 'projects.SpecializationIndexPage', 'projects.TeamIndexPage',
        'InfoPage',
        'projects.TopicPage',
    ]

    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)

    @property
    def latest_articles(self):
        """Returns 3 latest articles"""
        return NewsPage.objects.live().descendant_of(self).order_by('-marked', '-publication_date')[:3]

    @property
    def our_initiatives(self):
        ProjectPage = apps.get_model('projects', 'ProjectPage')
        return ProjectPage.objects.live().filter(self_initiated=True)

    @property
    def info_pages(self):
        return InfoPage.objects.live().descendant_of(self)

    @property
    def topics(self):
        return TopicPage.objects.live().descendant_of(self).filter(marked=True)

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
        if max_id is None:
            # there are no team members specified
            return None
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

    def get_context(self, request, *args, **kwargs):
        context = super().get_context(request, *args, **kwargs)
        top, rest = self.get_top_news_and_the_rest()

        context['top_article'] = top
        context['rest_of_articles'] = rest
        return context

    def get_top_news_and_the_rest(self):
        """
        On the top of NewsIndexPage we want to show the marked news, but if there is none, the newest will be alright.
        Then we want to
        """
        queryset = self.news.order_by('-marked', '-publication_date')
        return queryset.first(), queryset[1:]

    parent_page_types = ['HomePage']
    subpage_types = ['NewsPage']


class NewsPage(Page):
    specialization = models.ForeignKey(
        'projects.SpecializationPage',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='news_pages',
    )
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
    marked = models.BooleanField(
        default=False,
        help_text=_('If True, this article would be visible on HomePage and on top of NewsIndexPage. Only one article '
                    'can be marked, so old one will be unmarked automatically.'),
    )

    content_panels = Page.content_panels + [
        FieldPanel('marked'),
        FieldPanel('headline'),
        FieldPanel('body', classname="full"),
        ImageChooserPanel('photo'),
        PageChooserPanel('specialization'),
    ]

    parent_page_types = ['NewsIndexPage']
    subpage_types = []

    def save(self, *args, **kwargs):
        """
        We want to have only one marked NewsPage related to one home page.
        To achieve that we update all possible NewsPages having marked=True to marked=False.
        """
        if self.marked:
            marked_pages = NewsPage.objects.live().descendant_of(self.get_parent()).filter(marked=True)
            if marked_pages:
                marked_pages.update(marked=False)

        super().save(*args, **kwargs)


class JobOfferIndexPage(Page):
    cooperation = models.CharField(max_length=500)
    recruitment = StreamField([
        ('text', blocks.CharBlock(template='projects/blocks/paragraph.html')),
        ('tiles_list', blocks.ListBlock(Tile(), template='projects/blocks/tiles_list.html')),
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
    icon = models.ForeignKey(
        'wagtailimages.Image',
        # icon is required. null=True is here just to make migration easy
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )
    salary = models.CharField(max_length=50)
    employment_form = models.CharField(max_length=50)
    body = RichTextField()

    content_panels = Page.content_panels + [
        ImageChooserPanel('icon'),
        FieldPanel('salary'),
        FieldPanel('employment_form'),
        FieldPanel('body', classname="full"),
    ]

    parent_page_types = ['JobOfferIndexPage']
    subpage_types = []


class InfoPage(Page):
    """Static content page linked in footer."""
    content = RichTextField()
    consent_required = models.BooleanField(
        help_text=_('whether this document is linked in consent checkbox under the contact form'),
    )

    content_panels = Page.content_panels + [
        FieldPanel('content'),
        FieldPanel('consent_required'),
    ]


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
    partners = RichTextField()

    panels = [
        FieldPanel('page'),
        FieldPanel('contact'),
        FieldPanel('address'),
        FieldPanel('how_we_work'),
        FieldPanel('partners'),
    ]

    def __str__(self):
        return f'{self.page} footer'

    @property
    def specializations(self):
        return SpecializationPage.objects.live()
