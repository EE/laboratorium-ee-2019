import logging

from django import template
from django.conf import settings
from django.core.exceptions import ObjectDoesNotExist
from django.utils.http import urlencode
from django.utils.safestring import mark_safe

from src.apps.main.forms import ContactForm


logger = logging.getLogger(__name__)
register = template.Library()


@register.inclusion_tag('main/partials/contact_form.html', takes_context=True)
def contact_form(context):
    """
    Returns basic email contact form.
    """
    return {'form': ContactForm(request=context.get('request'))}


@register.inclusion_tag('main/partials/contact_form.html', takes_context=True)
def recruitment_contact_form(context):
    return {'form': ContactForm(
        request=context.get('request'),
        initial={
            'subject': 'recruitment',
            'recruitment_position': context['page'].title,
        },
    )}


@register.inclusion_tag('main/partials/navbar.html', takes_context=True)
def navbar(context):
    return {
        'menus': context['request'].site.root_page.get_descendants().live().in_menu(),
        'RELEASE_STRING': settings.RELEASE_STRING,
    }


# RODOPass snippet
@register.simple_tag(takes_context=True)
def rodo_pass(context):
    try:
        rodo_pass = context['request'].site.root_page.specific.rodo_pass.get()
    except ObjectDoesNotExist:
        return ''
    return mark_safe(rodo_pass.block.render())


# Footer
@register.inclusion_tag('main/partials/footer.html', takes_context=True)
def footer(context):
    try:
        footer = context['request'].site.root_page.specific.footer.get()
    except ObjectDoesNotExist:
        return {}
    return {'footer': footer}


@register.inclusion_tag('main/partials/share_buttons.html', takes_context=True)
def share_buttons(context):
    current_url = context['request'].build_absolute_uri()
    return {
        'facebook_url': 'https://www.facebook.com/sharer/sharer.php?' + urlencode({'u': current_url}),
        'linkedin_url': 'https://www.linkedin.com/shareArticle?' + urlencode({'url': current_url, 'mini': True}),
    }


@register.simple_tag
def bare_blocks(blocks):
    return mark_safe(''.join([
        block.render()
        for block in blocks
    ]))


@register.inclusion_tag('main/partials/image_with_srcset.html')
def image_with_srcset(image, **kwargs):
    """ Render <img> tag with srcset property. """
    if not image:
        logger.warn('image_with_srcset got falsey image')
        return {}

    width = 256  # initial width, for smallest rendition
    ratio = 2  # increase width this many times for each rendition

    renditions = []
    while True:
        if width >= image.width:
            width = image.width
        renditions.append({
            'width': width,
            'url': image.get_rendition(f'width-{width}').url,
        })
        if width >= image.width:
            break

        # increase width for next rendition
        width = round(width * ratio)

    return {
        'image': image,
        'class': kwargs.get('class'),
        'renditions': renditions,
    }
