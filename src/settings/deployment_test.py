"""Settings for test server (laboratorium-ee-test.herokuapp.com)."""

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999

import sentry_sdk
from sentry_sdk.integrations.django import DjangoIntegration

from .base import *  # noqa


ALLOWED_HOSTS = ['laboratorium-ee-test.herokuapp.com']


# SENTRY INTEGRATION
SENTRY_DSN = 'https://ddd596a35b2b4645a2d7682c5c1c8189@sentry.io/1460928'
sentry_sdk.init(
    dsn=SENTRY_DSN,
    integrations=[DjangoIntegration()]
)


# staticfile serving
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

CONTACT_EMAIL = ''
