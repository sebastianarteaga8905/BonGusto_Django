"""WSGI entrypoint para Railway/Gunicorn."""

import os

from django.core.wsgi import get_wsgi_application


os.environ.setdefault("DJANGO_SETTINGS_MODULE", "bongusto.infrastructure.settings")

application = get_wsgi_application()
