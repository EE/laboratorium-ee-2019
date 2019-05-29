from django import template

from src.apps.main.forms import ContactForm, AttachmentContactForm
from src.apps.main.models import RodoPassAdvert, Footer

register = template.Library()


@register.inclusion_tag('email_form.html', takes_context=True)
def contact_form(context):
    return {'form': ContactForm(request=context.get('request'))}


@register.inclusion_tag('email_with_attachment_form.html', takes_context=True)
def contact_form_with_attachment(context):
    return {'form': AttachmentContactForm(request=context.get('request'))}


@register.inclusion_tag('main/menu.html', takes_context=True)
def upper_menu(context):
    return {
        'menus': context['request'].site.root_page.get_descendants().live().in_menu(),
    }


# RODOPass snippet
@register.inclusion_tag('main/rodopass.html')
def rodo_pass():
    rodo_pass = RodoPassAdvert.objects.last()
    if rodo_pass is None:
        return
    return {'rodo_pass': rodo_pass}


# Footer
@register.inclusion_tag('main/footer.html', takes_context=True)
def footer(context):
    footer = Footer.objects.last()
    return {'footer': footer, 'request': context['request']}
