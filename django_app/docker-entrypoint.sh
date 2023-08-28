#!/bin/bash
set -e

if [ "x$COLLECTSTATIC" = 'xon' ]; then
    python manage.py collectstatic --noinput --clear
fi

if [ "x$MIGRATION_CMD" = 'xon' ]; then
    python manage.py makemigrations
    python manage.py migrate
fi


if [ -f "project_requirements.txt" ]; then
    pip install -r project_requirements.txt
fi



# python manage.py collectstatic --noinput --clear

exec "$@"