from django import template
register = template.Library()

@register.filter
def is_active(q):
    if q is True:
        return 'active'
    return ''