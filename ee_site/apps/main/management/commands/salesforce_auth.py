from pprint import pprint
import requests

from django.conf import settings
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'authenticate salesforce oauth2 device'

    def handle(self, *args, **options):
        if settings.SALESFORCE_DOMAIN is None:
            print("authentication cannot be done for dummy integration (SALESFORCE_DOMAIN setting is None)")
            return

        auth_endpoint = f'https://{settings.SALESFORCE_DOMAIN}.salesforce.com/services/oauth2/token'
        client_id = settings.SALESFORCE_CLIENT_ID
        client_secret = settings.SALESFORCE_CLIENT_SECRET

        with requests.Session() as session:

            # request app authorization by a user
            r = session.post(
                auth_endpoint,
                data={
                    'response_type': 'device_code',
                    'client_id': client_id,
                },
            )
            r.raise_for_status()

            verification_uri = r.json()['verification_uri']
            user_code = r.json()['user_code']
            device_code = r.json()['device_code']

            # wait for authorization
            while True:
                input(
                    f"visit {verification_uri} in your browser and enter the code {user_code} "
                    "(and then hit enter here)"
                )
                response = session.post(
                    auth_endpoint,
                    params={
                        'grant_type': 'device',
                        'code': device_code,
                        'client_id': client_id,
                        'client_secret': client_secret,
                    },
                )
                response_data = response.json()

                if response.status_code == 200:
                    print('authorized!')
                    print('server response is:')
                    pprint(response_data)
                    print(f"refresh token is: {response_data['refresh_token']}")
                    print("(you need to add it to env variables)")
                    return
                else:
                    print('authorization failed')
                    print('server response is:')
                    pprint(response_data)
