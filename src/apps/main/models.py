import random

from django.apps import apps
from django.db import models
from django.db.models import Max
from django.utils.translation import gettext as _
from modelcluster.fields import ParentalKey
from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    PageChooserPanel,
    StreamFieldPanel,
)
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField
from wagtail.core.models import Page, Orderable, Site
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.snippets.models import register_snippet

from src.apps.main.blocks import Tile, HorizontalListWithArrows
import src.apps.main.blocks as custom_blocks
from src.apps.projects.models import SpecializationPage, TopicPage, TeamIndexPage


class HomePage(Page):
    """ Page freeformed from predefined, beautiful blocks. Intended for use in landings and HPs. """
    content = StreamField([
        ('animated_process', custom_blocks.AnimatedProcessBlock()),
        ('hero_carousel', custom_blocks.HeroCarouselBlock()),
        ('hero_join_us', custom_blocks.HeroJoinUsBlock()),
        ('hero_process', custom_blocks.HeroProcessBlock()),
        ('hero_static_left', custom_blocks.HeroStaticLeftBlock()),
        ('hero_static_right', custom_blocks.HeroStaticRightBlock()),
        ('hero_switch', custom_blocks.HeroSwitchBlock()),
        ('logo_wall', custom_blocks.LogoWallBlock()),
        ('rnd', custom_blocks.RNDBlock()),
        ('triptych', custom_blocks.TriptychBlock()),
    ], blank=True)

    content_panels = Page.content_panels + [
        StreamFieldPanel('content'),
    ]


class SubPage(Page):
    """ Page consisting of image-backgrounded header and a freeform content.
    Inteneded as a standard, universal subpage. """
    header_background_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    header_subtitle = models.TextField(blank=True)
    header_external_link = models.URLField(blank=True)

    content = StreamField([
        ('contact_form', custom_blocks.ContactFormBlock()),
        ('contact_us_button', custom_blocks.ContactUsButtonBlock()),
        ('hero_process', custom_blocks.HeroProcessBlock()),
        ('hero_static_right', custom_blocks.HeroStaticRightBlock()),
        ('masonry', custom_blocks.MasonryBlock()),
        ('paragraph', custom_blocks.ParagraphBlock()),
        ('quote', custom_blocks.QuoteBlock()),
        ('tile_grid', custom_blocks.TileGridBlock()),
        ('tile_grid_spaced', custom_blocks.TileGridSpacedBlock()),
    ], blank=True)

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            ImageChooserPanel('header_background_image'),
            FieldPanel('header_subtitle'),
            FieldPanel('header_external_link'),
        ], heading="Header"),
        StreamFieldPanel('content'),
    ]


class OldHomePage(Page):
    """ This is legacy HP model. It will be deleted once `HomePage` model (above) is complete and operational. """
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

    join_us_headline = models.CharField(max_length=128)
    join_us_body = models.TextField()
    join_us_background = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    content_panels = Page.content_panels + [
        FieldPanel('header'),
        FieldPanel('specializations_headline'),
        MultiFieldPanel([
            FieldPanel('r_and_d_center_headline', classname="full"),
            FieldPanel('r_and_d_center_body'),
        ], heading="R&D center section"),
        MultiFieldPanel([
            FieldPanel('join_us_headline', classname="full"),
            FieldPanel('join_us_body'),
            ImageChooserPanel('join_us_background'),
        ], heading=_("Join us section")),
        InlinePanel('cooperators_logos', heading="We work with")
    ]

    @property
    def articles(self):
        return NewsPage.objects.live().descendant_of(self).order_by('-marked', '-publication_date')

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

    @property
    def rnd_block(self):
        return custom_blocks.RNDBlock().bind({
            'headline': self.r_and_d_center_headline,
            'body': self.r_and_d_center_body,
        })

    @property
    def specializations_block(self):
        return custom_blocks.TriptychBlock().bind({
            'headline': self.specializations_headline,
            'tiles': [
                {
                    'background_image': specialization.background_image,
                    'content': specialization.short_description,
                    'page': specialization,
                }
                for specialization
                in SpecializationPage.objects.live().descendant_of(self)
            ],
        })

    @property
    def our_stories_block(self):
        return custom_blocks.HeroCarouselBlock().bind({
            'headline': _('Poznaj nas przez nasze historie'),
            'tiles': [
                {
                    'background_image': news.photo,
                    'headline': news.headline,
                    'page': news,
                    'secondary_page': news.specialization,
                }
                for news
                in self.articles[:3]
            ],
        })

    @property
    def topics_block(self):
        return custom_blocks.HeroSwitchBlock().bind({
            'headline': _('Działamy w tematach'),
            'topics': [
                {
                    'background_image': topic.background_image,
                    'title': topic.title,
                    'page': topic.projects.first(),
                    'side_image': topic.phone_image,
                }
                for topic
                in TopicPage.objects.live().descendant_of(self).filter(marked=True)
            ],
        })

    @property
    def animated_process_block(self):
        return custom_blocks.AnimatedProcessBlock().bind(None)

    def join_us_block(self):
        return custom_blocks.HeroJoinUsBlock().bind({
            'background_image': self.join_us_background,
            'headline': self.join_us_headline,
            'body': self.join_us_body,
            'page': JobOfferIndexPage.objects.live().descendant_of(self).first(),
        })

    @property
    def our_initiatives_block(self):
        return custom_blocks.TriptychBlock().bind({
            'headline': _('Nasze inicjatywy'),
            'tiles': [
                {
                    'background_image': project.background_image,
                    'content': project.subtitle,
                    'page': project,
                    'external_url': project.project_url,
                }
                for project
                in self.our_initiatives
            ],
        })

    @property
    def cooperation_block(self):
        return custom_blocks.LogoWallBlock().bind({
            'title': _("We have worked with"),
            'logos': [
                logo.image
                for logo in self.cooperators_logos.all()
            ],
        })

    @property
    def member_block(self):
        member = self.random_team_member
        if not member:
            return None
        return custom_blocks.HeroStaticLeftBlock().bind({
            'background_image': member.photo,
            'title': _("Team"),
            'headline': member.name,
            'body': member.long_description,
            'page': TeamIndexPage.objects.live().descendant_of(self).first(),
        })


class CooperatorLogo(Orderable):
    page = ParentalKey(OldHomePage, on_delete=models.CASCADE, related_name='cooperators_logos')
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

    parent_page_types = ['OldHomePage']
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
    cta_question = models.CharField(
        max_length=200,
        blank=True,
    )

    content_panels = Page.content_panels + [
        FieldPanel('marked'),
        FieldPanel('headline'),
        FieldPanel('body', classname="full"),
        ImageChooserPanel('photo'),
        PageChooserPanel('specialization'),
        FieldPanel('cta_question'),
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
        ('tiles_list', HorizontalListWithArrows(
            Tile(template='main/blocks/tile_fancy.html'),
        )),
    ])

    @property
    def offers(self):
        return JobOfferPage.objects.live().descendant_of(self)

    content_panels = Page.content_panels + [
        FieldPanel('cooperation'),
        StreamFieldPanel('recruitment'),
    ]

    parent_page_types = ['OldHomePage']
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
class ContactForm(models.Model):
    site = models.OneToOneField(
        Site,
        null=True,
        on_delete=models.SET_NULL,
        related_name='contact_form',
    )
    condition_body = RichTextField()
    after_send_text = RichTextField()

    panels = [
        FieldPanel('site'),
        FieldPanel('condition_body'),
        FieldPanel('after_send_text'),
    ]


@register_snippet
class RodoPassAdvert(models.Model):
    page = ParentalKey(OldHomePage, related_name='rodo_pass', unique=True)
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

    @property
    def block(self):
        return custom_blocks.HeroStaticRightBlock().bind({
            'title': _('P.S.'),
            'headline': self.title,
            'body': self.description,
            'external_url': self.url,
        })


@register_snippet
class Footer(models.Model):
    page = ParentalKey(OldHomePage, related_name='footer', unique=True)
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
