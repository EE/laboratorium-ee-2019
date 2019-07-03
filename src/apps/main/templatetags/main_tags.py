from django import template
from django.core.exceptions import ObjectDoesNotExist

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
            'recruitment_position': context['page'].id,
        },
    )}


@register.inclusion_tag('main/partials/navbar.html', takes_context=True)
def navbar(context):
    return {
        'menus': context['request'].site.root_page.get_descendants().live().in_menu(),
    }


# RODOPass snippet
@register.inclusion_tag('main/partials/rodopass.html', takes_context=True)
def rodo_pass(context):
    try:
        rodo_pass = context['request'].site.root_page.specific.rodo_pass.get()
    except ObjectDoesNotExist:
        return {}
    return {'rodo_pass': rodo_pass}


# Footer
@register.inclusion_tag('main/partials/footer.html', takes_context=True)
def footer(context):
    try:
        footer = context['request'].site.root_page.specific.footer.get()
    except ObjectDoesNotExist:
        return {}
    return {'footer': footer}
