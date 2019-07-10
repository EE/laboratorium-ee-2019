from django import template
from django.core.exceptions import ObjectDoesNotExist
from django.utils.http import urlencode
from django.utils.safestring import mark_safe

from src.apps.main.forms import ContactForm

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
