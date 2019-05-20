from django import template

from src.apps.main.forms import ContactForm, AttachmentContactForm

register = template.Library()


@register.inclusion_tag('email_form.html', takes_context=True)
def contact_form(context):
    return {'form': ContactForm(request=context.get('request'))}


@register.inclusion_tag('email_with_attachment_form.html', takes_context=True)
def contact_form_with_attachment(context):
    return {'form': AttachmentContactForm(request=context.get('request'))}
