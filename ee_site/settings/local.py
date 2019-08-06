'''Settings for local development'''

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999

from .base import *  # noqa


DEBUG = env.bool('DJANGO_DEBUG', default=True)
TEMPLATES[0]['OPTIONS']['debug'] = DEBUG

ALLOWED_HOSTS = env.list('DJANGO_ALLOWED_HOSTS', default=['*'])

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'
CONTACT_EMAIL = env.get_value('CONTACT_EMAIL', default='g.danton@bastille.fr')
RECRUITMENT_EMAILS = {
    '': 'default_recruitment@example.com',
    'longterm': 'kariera@example.com',
    'immediate': 'przychodze_jutro@example.com',
}

INTERNAL_IPS = ['127.0.0.1', ]


# allow to use disclosed recaptha test keys
SILENCED_SYSTEM_CHECKS = ['captcha.recaptcha_test_key_error']


RELEASE_STRING = 'dev'
