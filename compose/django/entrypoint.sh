#!/bin/bash
# https://github.com/pydanny/cookiecutter-django/blob/master/%7B%7Bcookiecutter.project_slug%7D%7D/compose/django/entrypoint.sh 참고
set -e
cmd="$@"

function postgres_ready(){
python << END
import os
import psycopg2
import sys
try:
    conn = psycopg2.connect(
        host=os.environ.get("DJANGO_DB_HOST"),
        port=os.environ.get("DJANGO_DB_PORT"),
        dbname=os.environ.get("DJANGO_DB_NAME"),
        user=os.environ.get("DJANGO_DB_USERNAME"),
        password=os.environ.get("DJANGO_DB_PASSWORD"))
except psycopg2.OperationalError:
    sys.exit(-1)
sys.exit(0)
END
}

until postgres_ready; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 3
done

>&2 echo "Postgres is up - continuing..."
exec $cmd