from modeltranslation.translator import register, TranslationOptions

from . import models


@register(models.OldHomePage)
class OldHomePageTranslationOptions(TranslationOptions):
    fields = (
        'header', 'specializations_headline',
        'r_and_d_center_headline', 'r_and_d_center_body',
        'join_us_headline', 'join_us_body',
    )


@register(models.NewsIndexPage)
class NewsIndexPageTranslationOptions(TranslationOptions):
    fields = ()


@register(models.NewsPage)
class NewsPageTranslationOptions(TranslationOptions):
    fields = (
        'headline', 'body',
        'cta_question',
    )


@register(models.JobOfferIndexPage)
class JobOfferIndexPageTranslationOptions(TranslationOptions):
    fields = ('cooperation', 'recruitment')


@register(models.JobOfferPage)
class JobOfferPageTranslationOptions(TranslationOptions):
    fields = ('body',)


@register(models.InfoPage)
class InfoPageTranslationOptions(TranslationOptions):
    fields = ('content',)


@register(models.ContactForm)
class ContactFormTranslationOptions(TranslationOptions):
    fields = (
        'condition_body',
        'after_send_text',
    )


@register(models.RodoPassAdvert)
class RodoPassAdvertTranslationOptions(TranslationOptions):
    fields = ('title', 'description', 'button_text')


@register(models.Footer)
class FooterTranslationOptions(TranslationOptions):
    fields = ('contact', 'address', 'how_we_work', 'partners')
