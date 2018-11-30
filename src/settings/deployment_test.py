"""Settings for test server (laboratorium-ee-test.herokuapp.com)."""

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999

import raven
from raven.transport.requests import RequestsHTTPTransport

from .base import *  # noqa


ALLOWED_HOSTS = ['laboratorium-ee-test.herokuapp.com']


# SENTRY INTEGRATION
RAVEN_CONFIG = {
    'dsn': env('RAVEN_DSN'),
    'release': env('HEROKU_SLUG_COMMIT', default=''),
    'transport': RequestsHTTPTransport
}
INSTALLED_APPS += ('raven.contrib.django.raven_compat',)


# staticfile serving
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
