import logging

from django.conf import settings
from simple_salesforce import Salesforce
import requests


logger = logging.getLogger(__name__)


def dummy_method(name):
    return lambda *args, **kwargs: logger.warning(f'dummy metohd {name} called (args %s, kwargs %s)', args, kwargs)


class DummyObjectHandler:
    def __init__(self, name):
        self.create = dummy_method(f'{name}.create')


class SalesforceDummy:
    def __init__(self, name):
        self.Lead = DummyObjectHandler(f'{name}.Lead')


if settings.SALESFORCE_INSTANCE is None:
    salesforce = SalesforceDummy('salesforce')

else:
    # request new session id (aka. access token)
    r = requests.post(
        f'https://{settings.SALESFORCE_DOMAIN}.salesforce.com/services/oauth2/token',
        data={
            'grant_type': 'refresh_token',
            'refresh_token': settings.SALESFORCE_REFRESH_TOKEN,
            'client_id': settings.SALESFORCE_CLIENT_ID,
            'client_secret': settings.SALESFORCE_CLIENT_SECRET,
        },
    )

    try:
        r.raise_for_status()
        session_id = r.json()['access_token']

        salesforce = Salesforce(
            instance=settings.SALESFORCE_INSTANCE,
            session_id=session_id,
        )

    except requests.exceptions.HTTPError as e:
        logger.exception('failed to obtain salesforce session id', extra={'response': e.response.text})
        salesforce = SalesforceDummy('salesforce')
