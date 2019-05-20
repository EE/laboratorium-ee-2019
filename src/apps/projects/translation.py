from modeltranslation.translator import TranslationOptions
from modeltranslation.decorators import register

from . import models


@register(models.SpecializationIndexPage)
class SpecializationIndexPageTranslationOptions(TranslationOptions):
    fields = ()


@register(models.SpecializationPage)
class SpecializationPageTranslationOptions(TranslationOptions):
    fields = (
        'how_we_work',
        'case_study',
        'tools',
    )


@register(models.ProjectPage)
class ProjectPageTranslationOptions(TranslationOptions):
    fields = (
        'subtitle',
        'challenge',
        'process',
        'quote',
    )
