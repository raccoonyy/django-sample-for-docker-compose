#!/bin/sh
python manage.py migrate
gunicorn --workers=3 --bind 0:8000 djangosample.wsgi
