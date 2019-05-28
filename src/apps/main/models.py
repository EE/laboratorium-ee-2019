from django.db import models
from wagtail.core import blocks
from wagtail.core.fields import RichTextField, StreamField

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel, StreamFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel

from src.apps.main.blocks import Tile
from src.apps.projects.models import SpecializationPage


class HomePage(Page):
    header = models.CharField(max_length=255)

    content_panels = Page.content_panels + [
        FieldPanel('header'),
    ]

    @property
    def specializations(self):
        return SpecializationPage.objects.live().descendant_of(self)


class NewsIndexPage(Page):
    @property
    def news(self):
        return NewsPage.objects.live().descendant_of(self)


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

    parent_page_types = [NewsIndexPage]


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


class JobOfferPage(Page):
    salary = models.CharField(max_length=50)
    employment_form = models.CharField(max_length=50)
    body = RichTextField()

    content_panels = Page.content_panels + [
        FieldPanel('salary'),
        FieldPanel('employment_form'),
        FieldPanel('body', classname="full"),
    ]

    parent_page_types = [JobOfferIndexPage]
