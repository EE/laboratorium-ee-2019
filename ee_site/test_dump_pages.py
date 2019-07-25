import os
import subprocess

from django.core import management
from django.db import DEFAULT_DB_ALIAS, connections
from django.test import TestCase


class DumpPagesTestCase(TestCase):
    def setUp(self):
        connection = connections[DEFAULT_DB_ALIAS]
        conn_params = connection.get_connection_params()

        # this is copied from django/db/backends/postgresql/client.py
        # we need to modify the code to allow passing SQL input from file

        args = ['psql']

        host = conn_params.get('host', '')
        port = conn_params.get('port', '')
        dbname = conn_params.get('database', '')
        user = conn_params.get('user', '')
        passwd = conn_params.get('password', '')
        sslmode = conn_params.get('sslmode', '')
        sslrootcert = conn_params.get('sslrootcert', '')
        sslcert = conn_params.get('sslcert', '')
        sslkey = conn_params.get('sslkey', '')

        if user:
            args += ['-U', user]
        if host:
            args += ['-h', host]
        if port:
            args += ['-p', str(port)]
        args += [dbname]

        subprocess_env = os.environ.copy()
        if passwd:
            subprocess_env['PGPASSWORD'] = str(passwd)
        if sslmode:
            subprocess_env['PGSSLMODE'] = str(sslmode)
        if sslrootcert:
            subprocess_env['PGSSLROOTCERT'] = str(sslrootcert)
        if sslcert:
            subprocess_env['PGSSLCERT'] = str(sslcert)
        if sslkey:
            subprocess_env['PGSSLKEY'] = str(sslkey)

        with open('dump.sql', 'rt') as f:
            with open(os.devnull, 'w') as devnull:
                subprocess.run(
                    args, check=True, env=subprocess_env,
                    stdin=f, stdout=devnull,
                )

        # run migrations not included in SQL dump
        management.call_command('migrate', '--no-input')

    def test_suite_should_run(self):
        # This test verifies that dump.sql was loaded
        pass
