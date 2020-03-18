"""Settings for prodution server (deployed at strona-ee-prod.herokuapp.com)."""

# ignore the 'may be undefined, or defined from star imports' error
# flake8: noqa: F999

from .heroku import *  # noqa

import sentry_sdk
from sentry_sdk.integrations.django import DjangoIntegration


# TLS/SSL related
SECURE_SSL_REDIRECT = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SECURE = True


# SENTRY INTEGRATION
SENTRY_DSN = 'https://8a7c4d6f462a4bb5821f8d3bf3bf308a@sentry.io/1485846'
sentry_sdk.init(
    dsn=SENTRY_DSN,
    integrations=[DjangoIntegration()]
)


# mediafiles on AWS S3
DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
AWS_ACCESS_KEY_ID = 'AKIAZ64OAD7G5NBWB6PF'
AWS_SECRET_ACCESS_KEY = env.str('AWS_SECRET_ACCESS_KEY')
AWS_STORAGE_BUCKET_NAME = 'strona-ee-prod'
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

DEFAULT_FROM_EMAIL = 'strona-ee@laboratorium.ee'
CONTACT_EMAIL = 'kontakt@laboratorium.ee'
RECRUITMENT_EMAILS = {
    'default': 'kariera@laboratorium.ee',
    'immediate': 'dolacz@laboratorium.ee',
    'longterm': 'kariera@laboratorium.ee',
}


# frontend integrations
GOOGLE_ANALYTICS_ID = 'UA-86468922-1'
FACEBOOK_PIXEL_ID = '1278068592584165'
HOTJAR_ID = '665318'


# recaptha
RECAPTCHA_PUBLIC_KEY = '6LfhvqoUAAAAAAxqTIjosKUUcd5qYV9APjLegfMy'
RECAPTCHA_PRIVATE_KEY = env.str('RECAPTCHA_PRIVATE_KEY')
