#!/bin/sh

export PGPASSWORD=postgres

psql -h postgres --user postgres -c "create database \"laboratorium-ee-2019;\""

exit 0  # ignore errors
