#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
export PYTHONPATH=.
exec gunicorn TICKET.wsgi:application --log-file -
