from django.conf import settings
from simple_salesforce import Salesforce


salesforce = Salesforce(
    instance=settings.SALESFORCE_INSTANCE,
    session_id=settings.SALESFORCE_SECRET_TOKEN,
    domain='test' if settings.SALESFORCE_TEST else 'login',
)
