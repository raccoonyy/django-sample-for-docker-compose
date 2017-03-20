#!/bin/sh
pip install -r requirements.txt
python manage.py migrate
gunicorn --workers=3 --bind 0:8000 djangosample.wsgi
