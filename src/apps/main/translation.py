from modeltranslation.translator import register, TranslationOptions

from . import models


@register(models.HomePage)
class HomePageTranslationOptions(TranslationOptions):
    fields = (
        'header', 'specializations_headline', 'r_and_d_center_headline', 'r_and_d_center_body',
    )


@register(models.NewsIndexPage)
class NewsIndexPageTranslationOptions(TranslationOptions):
    fields = ()


@register(models.NewsPage)
class NewsPageTranslationOptions(TranslationOptions):
    fields = ('headline', 'body')


@register(models.JobOfferIndexPage)
class JobOfferIndexPageTranslationOptions(TranslationOptions):
    fields = ('cooperation', 'recruitment')


@register(models.JobOfferPage)
class JobOfferPageTranslationOptions(TranslationOptions):
    fields = ('body',)
