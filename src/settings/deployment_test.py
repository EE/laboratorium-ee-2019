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


# staticfile serving
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'


# mediafiles on AWS S3
DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
AWS_ACCESS_KEY_ID = 'AKIAZ64OAD7GVKVUGVEY'
AWS_SECRET_ACCESS_KEY = env.str('AWS_SECRET_ACCESS_KEY')
AWS_STORAGE_BUCKET_NAME = 'strona-ee-test'
AWS_DEFAULT_ACL = 'public-read'
AWS_BUCKET_ACL = 'public-read'
AWS_QUERYSTRING_AUTH = False
AWS_S3_CUSTOM_DOMAIN = '%s.s3.amazonaws.com' % AWS_STORAGE_BUCKET_NAME
AWS_S3_OBJECT_PARAMETERS = {
    'CacheControl': 'max-age=86400',
}


# AWS email
EMAIL_USE_TLS = True
EMAIL_HOST = 'email-smtp.eu-west-1.amazonaws.com'
EMAIL_HOST_USER = 'AKIAILU4IYP6CYNB2F5A'
EMAIL_HOST_PASSWORD = env('AWS_SMTP_PASSWORD')
EMAIL_PORT = 587
DEFAULT_FROM_EMAIL = 'strona-ee-test@laboratorium.ee'
CONTACT_EMAIL = 'jan.rydzewski@laboratorium.ee'  # just for testing
