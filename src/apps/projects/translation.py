from modeltranslation.translator import TranslationOptions
from modeltranslation.decorators import register

from . import models


@register(models.SpecializationPage)
class SpecializationPageTranslationOptions(TranslationOptions):
    fields = (
        'how_we_work',
    )


@register(models.ProjectPage)
class ProjectPageTranslationOptions(TranslationOptions):
    fields = (
        'subtitle',
    )
