"""Settings for heroku deployment."""

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999
from raven.transport.requests import RequestsHTTPTransport

from .production import *  # noqa

# This is supposed to be secure on Heroku:
# https://github.com/heroku/django-heroku/issues/5
ALLOWED_HOSTS = ['*']

# SENTRY INTEGRATION
if not env('RAVEN_DISABLED', default=False):
    RAVEN_CONFIG = {
        'dsn': env('RAVEN_DSN'),
        'release': env('HEROKU_SLUG_COMMIT', default=''),
        'transport': RequestsHTTPTransport
    }
    INSTALLED_APPS += ('raven.contrib.django.raven_compat',)

# staticfile serving
MIDDLEWARE = ['whitenoise.middleware.WhiteNoiseMiddleware',] + MIDDLEWARE
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'


# Based on Heroku's recommendations
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'verbose': {
            'format': ('%(asctime)s [%(process)d] [%(levelname)s] ' +
                       'pathname=%(pathname)s lineno=%(lineno)s ' +
                       'funcname=%(funcName)s %(message)s'),
            'datefmt': '%Y-%m-%d %H:%M:%S'
        },
        'simple': {
            'format': '%(levelname)s %(message)s'
        }
    },
    'handlers': {
        'null': {
            'level': 'DEBUG',
            'class': 'logging.NullHandler',
        },
        'console': {
            'level': 'DEBUG',
            'class': 'logging.StreamHandler',
            'formatter': 'verbose'
        }
    },
    'loggers': {
        'testlogger': {
            'handlers': ['console'],
            'level': 'INFO',
        }
    }
}
