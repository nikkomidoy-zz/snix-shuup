#!/usr/bin/env bash

# RELEASE SCRIPT: RUNS BEFORE AN APP IS DEPLOYED (TYPICALLY STAGING/PRODUCTION)

echo "RELEASE SCRIPT:"
echo $HEROKU_APP_NAME

echo "Execute migration"
python manage.py migrate --no-input
echo "Collect static files"
python manage.py collecstatic
