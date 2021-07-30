from django import template
from django.utils import translation
from django.urls import translate_url


register = template.Library()


# based on https://github.com/infoportugal/wagtail-modeltranslation/issues/60#issuecomment-184692542
@register.simple_tag(takes_context=True)
def translate_current_url(context, requested_language=None):
    """
    Get current page's url in requested language
    Usage: {% translate_current_url 'en' %}
    """
    request = context['request']

    if not request.resolver_match:
        return ''

    # handle wagtail pages
    elif request.resolver_match.url_name == 'wagtail_serve':
        with translation.override(requested_language):
            current_page = context.get('page')
            if current_page:
                url = current_page.get_url(request)
            else:
                url = ''

        # We need to strip langage code prefix to be compatibile with i18n setlang view.
        if url.startswith(f'/{requested_language}/'):
            url = url[len(requested_language) + 1:]

        return url

    # fallback to standard url translation
    else:
        return translate_url(request.path, requested_language)
