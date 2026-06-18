web: python manage.py migrate && python manage.py collectstatic --no-input && PYTHONPATH=src daphne -b 0.0.0.0 -p $PORT bongusto.infrastructure.asgi:application
