import logging

from django.conf import settings
from simple_salesforce import Salesforce


logger = logging.getLogger(__name__)


def dummy_method(name):
    return lambda *args, **kwargs: logger.warning(f'dummy metohd {name} called (args %s, kwargs %s)', args, kwargs)


class DummyObjectHandler:
    def __init__(self, name):
        self.create = dummy_method(f'{name}.create')


class SalesforceDummy:
    def __init__(self, name):
        self.Lead = DummyObjectHandler(f'{name}.Lead')


if settings.SALESFORCE_DOMAIN is None:
    salesforce = SalesforceDummy('salesforce')
else:
    salesforce = Salesforce(
        instance=settings.SALESFORCE_INSTANCE,
        session_id=settings.SALESFORCE_ACCESS_TOKEN,
        domain=settings.SALESFORCE_DOMAIN,
    )
