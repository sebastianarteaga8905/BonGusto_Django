"""
infrastructure/settings.py
Configuracion principal de Django para BonGusto.
"""

import importlib.util
import os
from pathlib import Path
from urllib.parse import urlparse

try:
    import dj_database_url
    from decouple import config
except ImportError:  # pragma: no cover - compatibilidad local antes de instalar dependencias
    dj_database_url = None
    def config(name, default=None, cast=str):
        value = os.getenv(name, default)
        if value is None:
            raise RuntimeError(f"Falta definir la variable de entorno requerida: {name}")

        if cast is bool:
            if isinstance(value, bool):
                return value
            return str(value).strip().lower() in {"1", "true", "yes", "on"}

        return cast(value) if cast else value


BASE_DIR = Path(__file__).resolve().parent.parent.parent.parent


def _load_dotenv(path: Path) -> None:
    """Carga variables desde un archivo .env simple sin depender de paquetes extra."""
    if not path.exists():
        return

    with path.open("r", encoding="utf-8") as env_file:
        for raw_line in env_file:
            line = raw_line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue

            key, value = line.split("=", 1)
            key = key.strip()
            value = value.strip().strip('"').strip("'")
            if key and key not in os.environ:
                os.environ[key] = value


def _database_from_url(database_url: str) -> dict:
    """Parsea DATABASE_URL con dj-database-url o con fallback manual."""
    if dj_database_url is not None:
        return dj_database_url.config(
            default=database_url,
            conn_max_age=600,
            ssl_require=True,
        )

    parsed = urlparse(database_url)
    return {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": (parsed.path or "").lstrip("/"),
        "USER": parsed.username or "",
        "PASSWORD": parsed.password or "",
        "HOST": parsed.hostname or "",
        "PORT": str(parsed.port or 5432),
        "CONN_MAX_AGE": 600,
        "OPTIONS": {
            "sslmode": "require",
        },
    }


_load_dotenv(BASE_DIR / ".env")

_DEFAULT_SECRET_KEY = "django-dev-bongusto-cambia-esta-clave"

def required_env(name: str, default=None) -> str:
    """Obtiene una variable obligatoria del entorno."""
    value = config(name, default=default)
    if value in (None, ""):
        raise RuntimeError(f"Falta definir la variable de entorno requerida: {name}")
    return value


def env_bool(name: str, default: bool = False) -> bool:
    """Lee una variable booleana del entorno."""
    return config(name, default=default, cast=bool)


def env_list(name: str, default=None) -> list[str]:
    """Lee listas separadas por coma desde el entorno."""
    raw = config(name, default=default or "")
    if not raw:
        return []
    return [item.strip() for item in str(raw).split(",") if item.strip()]


DJANGO_ENV = config("DJANGO_ENV", default="development").strip().lower()

SECRET_KEY = required_env(
    "DJANGO_SECRET_KEY",
    default=_DEFAULT_SECRET_KEY if DJANGO_ENV != "production" else None,
)

DEBUG = env_bool("DJANGO_DEBUG", False)

ALLOWED_HOSTS = env_list("DJANGO_ALLOWED_HOSTS")
RAILWAY_PUBLIC_DOMAIN = os.getenv("RAILWAY_PUBLIC_DOMAIN")
if RAILWAY_PUBLIC_DOMAIN and RAILWAY_PUBLIC_DOMAIN not in ALLOWED_HOSTS:
    ALLOWED_HOSTS.append(RAILWAY_PUBLIC_DOMAIN)
if DEBUG and not ALLOWED_HOSTS:
    ALLOWED_HOSTS = ["localhost", "127.0.0.1"]

for host_pruebas in ("testserver", "localhost", "127.0.0.1"):
    if host_pruebas not in ALLOWED_HOSTS:
        ALLOWED_HOSTS.append(host_pruebas)

CSRF_TRUSTED_ORIGINS = env_list("CSRF_TRUSTED_ORIGINS")
if RAILWAY_PUBLIC_DOMAIN:
    railway_origin = f"https://{RAILWAY_PUBLIC_DOMAIN}"
    if railway_origin not in CSRF_TRUSTED_ORIGINS:
        CSRF_TRUSTED_ORIGINS.append(railway_origin)
if not CSRF_TRUSTED_ORIGINS:
    CSRF_TRUSTED_ORIGINS = [
        f"https://{host}"
        for host in ALLOWED_HOSTS
        if host not in {"*", "localhost", "127.0.0.1"} and not host.startswith(".")
    ]

if DJANGO_ENV == "production" and not DEBUG and SECRET_KEY == _DEFAULT_SECRET_KEY:
    raise RuntimeError(
        "Debes definir DJANGO_SECRET_KEY en el entorno cuando DJANGO_DEBUG=false."
    )

_HAS_CORSHEADERS = importlib.util.find_spec("corsheaders") is not None
_HAS_WHITENOISE = importlib.util.find_spec("whitenoise") is not None

INSTALLED_APPS = [
    "daphne",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "channels",
    "django_extensions",
    *(
        ["corsheaders"]
        if _HAS_CORSHEADERS
        else []
    ),
    "bongusto.domain",
    "bongusto.interfaces",
    "bongusto.modules.auth.apps.AuthConfig",
    "bongusto.modules.bitacora.apps.BitacoraConfig",
    "bongusto.modules.calificaciones.apps.CalificacionesConfig",
    "bongusto.modules.categorias.apps.CategoriasConfig",
    "bongusto.modules.chat.apps.ChatConfig",
    "bongusto.modules.dashboard.apps.DashboardConfig",
    "bongusto.modules.eventos.apps.EventosConfig",
    "bongusto.modules.menus.apps.MenusConfig",
    "bongusto.modules.mesas.apps.MesasConfig",
    "bongusto.modules.musica.apps.MusicaConfig",
    "bongusto.modules.notificaciones.apps.NotificacionesConfig",
    "bongusto.modules.pedidos.apps.PedidosConfig",
    "bongusto.modules.perfil.apps.PerfilConfig",
    "bongusto.modules.permisos.apps.PermisosConfig",
    "bongusto.modules.productos.apps.ProductosConfig",
    "bongusto.modules.roles.apps.RolesConfig",
    "bongusto.modules.shared.apps.SharedConfig",
    "bongusto.modules.usuarios.apps.UsuariosConfig",
]

MIDDLEWARE = [
    *(
        ["corsheaders.middleware.CorsMiddleware"]
        if _HAS_CORSHEADERS
        else []
    ),
    "django.middleware.security.SecurityMiddleware",
    *(
        ["whitenoise.middleware.WhiteNoiseMiddleware"]
        if _HAS_WHITENOISE
        else []
    ),
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    "bongusto.modules.shared.middleware.AuthMiddleware",
]

CORS_ALLOW_ALL_ORIGINS = True

ROOT_URLCONF = "bongusto.interfaces.urls"
WSGI_APPLICATION = "bongusto.wsgi.application"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

ASGI_APPLICATION = "bongusto.infrastructure.asgi.application"

DATABASE_URL = config("DATABASE_URL", default=None)
if DATABASE_URL:
    DATABASES = {
        "default": _database_from_url(DATABASE_URL)
    }
else:
    if DJANGO_ENV == "production":
        raise RuntimeError(
            "Falta DATABASE_URL en el entorno de produccion. Railway debe proveer DATABASE_URL."
        )

    DATABASES = {
        "default": {
            "ENGINE": "django.db.backends.sqlite3",
            "NAME": BASE_DIR / "db.sqlite3",
        }
    }

REDIS_URL = os.getenv("REDIS_URL", "").strip()

if REDIS_URL:
    parsed_redis = urlparse(REDIS_URL)
    _redis_location = (
        f"redis://{parsed_redis.hostname or '127.0.0.1'}:{parsed_redis.port or 6379}"
        f"/{(parsed_redis.path or '/0').lstrip('/') or '0'}"
    )

    CHANNEL_LAYERS = {
        "default": {
            "BACKEND": "channels_redis.core.RedisChannelLayer",
            "CONFIG": {
                "hosts": [REDIS_URL],
                "capacity": int(os.getenv("CHANNEL_CAPACITY", "300")),
                "expiry": int(os.getenv("CHANNEL_EXPIRY_SECONDS", "30")),
            },
        }
    }

    CACHES = {
        "default": {
            "BACKEND": "django.core.cache.backends.redis.RedisCache",
            "LOCATION": _redis_location,
            "TIMEOUT": int(os.getenv("CACHE_DEFAULT_TIMEOUT_SECONDS", "300")),
            "KEY_PREFIX": os.getenv("CACHE_KEY_PREFIX", "bongusto"),
        }
    }
else:
    CHANNEL_LAYERS = {
        "default": {
            "BACKEND": "channels.layers.InMemoryChannelLayer",
        }
    }

    CACHES = {
        "default": {
            "BACKEND": "django.core.cache.backends.locmem.LocMemCache",
            "LOCATION": "bongusto-local-cache",
            "TIMEOUT": int(os.getenv("CACHE_DEFAULT_TIMEOUT_SECONDS", "120")),
        }
    }

LANGUAGE_CODE = "es-co"
TIME_ZONE = "America/Bogota"
USE_I18N = True
USE_TZ = True

STATIC_URL = "/static/"
STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")

if _HAS_WHITENOISE:
    STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"
    STORAGES = {
        "default": {
            "BACKEND": "django.core.files.storage.FileSystemStorage",
        },
        "staticfiles": {
            "BACKEND": "whitenoise.storage.CompressedManifestStaticFilesStorage",
        },
    }

MEDIA_URL = "/media/"
MEDIA_ROOT = BASE_DIR / "media"

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

SESSION_ENGINE = "django.contrib.sessions.backends.db"
SESSION_COOKIE_AGE = 3600
SESSION_COOKIE_HTTPONLY = True
SESSION_COOKIE_SAMESITE = "Lax"
SESSION_COOKIE_SECURE = env_bool("SESSION_COOKIE_SECURE", not DEBUG)

CSRF_COOKIE_HTTPONLY = False
CSRF_COOKIE_SAMESITE = "Lax"
CSRF_COOKIE_SECURE = env_bool("CSRF_COOKIE_SECURE", not DEBUG)

SECURE_BROWSER_XSS_FILTER = True
SECURE_CONTENT_TYPE_NOSNIFF = True
X_FRAME_OPTIONS = "DENY"
SECURE_REFERRER_POLICY = "same-origin"

SECURE_HSTS_SECONDS = int(
    config(
        "SECURE_HSTS_SECONDS",
        default=os.getenv("DJANGO_SECURE_HSTS_SECONDS", "31536000" if not DEBUG else "0"),
    )
)
SECURE_HSTS_INCLUDE_SUBDOMAINS = env_bool("SECURE_HSTS_INCLUDE_SUBDOMAINS", not DEBUG)
SECURE_HSTS_PRELOAD = env_bool("SECURE_HSTS_PRELOAD", not DEBUG)

SECURE_SSL_REDIRECT = env_bool(
    "SECURE_SSL_REDIRECT",
    str(os.getenv("DJANGO_SECURE_SSL_REDIRECT", "false" if DEBUG else "true")).lower() == "true",
)

EMAIL_BACKEND = os.getenv(
    "EMAIL_BACKEND",
    "django.core.mail.backends.smtp.EmailBackend",
)
EMAIL_HOST = os.getenv("EMAIL_HOST", "smtp.gmail.com")
EMAIL_PORT = int(os.getenv("EMAIL_PORT", "587"))
EMAIL_HOST_USER = os.getenv("EMAIL_HOST_USER", "")
EMAIL_HOST_PASSWORD = os.getenv("EMAIL_HOST_PASSWORD", "")
EMAIL_USE_TLS = os.getenv("EMAIL_USE_TLS", "true").lower() == "true"

DEFAULT_FROM_EMAIL = os.getenv(
    "DEFAULT_FROM_EMAIL",
    EMAIL_HOST_USER or "no-reply@bongusto.local",
)

PASSWORD_RESET_CODE_TTL_MINUTES = int(
    os.getenv("PASSWORD_RESET_CODE_TTL_MINUTES", "10")
)
DEMO_MODE = os.getenv("DEMO_MODE", "false").lower() == "true"
PASSWORD_RESET_TOKEN_TTL_SECONDS = int(
    os.getenv("PASSWORD_RESET_TOKEN_TTL_SECONDS", "3600")
)

_default_api_token_ttl = 60 * 60 * 24 * 30 if DEBUG else 60 * 60 * 8
API_TOKEN_TTL_SECONDS = int(
    os.getenv("API_TOKEN_TTL_SECONDS", str(_default_api_token_ttl))
)
