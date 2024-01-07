#!/bin/bash


sleep 3




python manage.py makemigrations

python manage.py migrate



gunicorn -b 0.0.0.0:8000 new.wsgi
