#!/usr/bin/env bash
set -e
# Absolute path to repo root (directory containing this script)
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
cd "$ROOT"
export PYTHONPATH="$ROOT"
exec gunicorn TICKET.wsgi:application --log-file -
