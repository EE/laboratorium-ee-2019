"""Settings for test server (laboratorium-ee-test.herokuapp.com)."""

# We ignore the 'may be undefined, or defined from star imports' error
# because we use, and want to continue to use, star imports in settings files.
#
# flake8: noqa: F999

import raven
from raven.transport.requests import RequestsHTTPTransport

from .heroku import *  # noqa


# Raven DSN for Sentry integration on frontend
DSN_PUBLIC = 'https://194ce8ca6d7441599d3c1c62c9f39e1d@sentry.laboratorium.ee/30'
