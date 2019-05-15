from modeltranslation.translator import register, TranslationOptions

from . import models


@register(models.HomePage)
class HomePageTranslationOptions(TranslationOptions):
    fields = ('header',)
