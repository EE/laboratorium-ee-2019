"""Settings for test server (laboratorium-ee-test.herokuapp.com)."""

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999

import sentry_sdk
from sentry_sdk.integrations.django import DjangoIntegration

from .deployment_prod import *  # noqa


ALLOWED_HOSTS = ['laboratorium-ee-test.herokuapp.com']


# SENTRY INTEGRATION
SENTRY_DSN = 'https://ddd596a35b2b4645a2d7682c5c1c8189@sentry.io/1460928'
sentry_sdk.init(
    dsn=SENTRY_DSN,
    integrations=[DjangoIntegration()]
)


# mediafiles on AWS S3
AWS_ACCESS_KEY_ID = 'AKIAZ64OAD7GVKVUGVEY'
AWS_STORAGE_BUCKET_NAME = 'strona-ee-test'
AWS_S3_CUSTOM_DOMAIN = '%s.s3.amazonaws.com' % AWS_STORAGE_BUCKET_NAME


# AWS email
DEFAULT_FROM_EMAIL = 'strona-ee-test@laboratorium.ee'
CONTACT_EMAIL = 'kontakt-test@laboratorium.ee'
