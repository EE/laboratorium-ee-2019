from django.core.management import BaseCommand


class Command(BaseCommand):
    help = 'Load some basic sites'

    def add_arguments(self, parser):
        parser.add_argument('host', type=str, help='Host of our new database')
        parser.add_argument('user', type=str, help='Username')
        parser.add_argument('db_name', type=str, help='Your new database name')

    def handle(self, *args, **options):
        host = options['host']
        user = options['user']
        db_name = options['db_name']

        bashCommand = f'pg_restore -c -h {host} -U {user} -d {db_name} -v dump.tar -W'
        import subprocess
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
        print(output, error)
