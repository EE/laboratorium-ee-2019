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
sentry_sdk.init(
    dsn=env('SENTRY_DSN'),
    integrations=[DjangoIntegration()]
)
DSN_PUBLIC = 'https://194ce8ca6d7441599d3c1c62c9f39e1d@sentry.laboratorium.ee/30'


# staticfile serving
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

CONTACT_EMAIL = ''
