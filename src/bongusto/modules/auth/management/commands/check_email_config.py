from django.conf import settings
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = "Muestra la configuracion SMTP cargada sin exponer credenciales sensibles."

    def handle(self, *args, **options):
        email_backend = getattr(settings, "EMAIL_BACKEND", "")
        email_host = getattr(settings, "EMAIL_HOST", "")
        email_port = getattr(settings, "EMAIL_PORT", "")
        email_use_tls = bool(getattr(settings, "EMAIL_USE_TLS", False))
        email_use_ssl = bool(getattr(settings, "EMAIL_USE_SSL", False))
        email_host_user = getattr(settings, "EMAIL_HOST_USER", "")
        default_from_email = getattr(settings, "DEFAULT_FROM_EMAIL", "")
        server_email = getattr(settings, "SERVER_EMAIL", "")
        has_password = bool((getattr(settings, "EMAIL_HOST_PASSWORD", "") or "").strip())

        rows = [
            f"EMAIL_BACKEND={email_backend}",
            f"EMAIL_HOST={email_host}",
            f"EMAIL_PORT={email_port}",
            f"EMAIL_USE_TLS={email_use_tls}",
            f"EMAIL_USE_SSL={email_use_ssl}",
            f"EMAIL_HOST_USER={email_host_user}",
            f"DEFAULT_FROM_EMAIL={default_from_email}",
            f"SERVER_EMAIL={server_email}",
            f"EMAIL_HOST_PASSWORD={'configurada' if has_password else 'no configurada'}",
        ]

        for row in rows:
            self.stdout.write(row)

        warnings = []

        if not (email_host_user or "").strip():
            warnings.append("EMAIL_HOST_USER esta vacio.")

        if not has_password:
            warnings.append("EMAIL_HOST_PASSWORD no esta configurada.")

        if email_use_tls and email_use_ssl:
            warnings.append("EMAIL_USE_TLS y EMAIL_USE_SSL no deben estar activos al mismo tiempo.")

        if (email_host or "").strip().lower() == "smtp.gmail.com":
            if int(email_port or 0) != 587:
                warnings.append("Para Gmail se recomienda EMAIL_PORT=587.")
            if not email_use_tls:
                warnings.append("Para Gmail EMAIL_USE_TLS debe estar en True.")
            if email_use_ssl:
                warnings.append("Para Gmail EMAIL_USE_SSL debe estar en False.")

        if not (default_from_email or "").strip():
            warnings.append("DEFAULT_FROM_EMAIL esta vacio.")

        if warnings:
            self.stdout.write("")
            self.stdout.write(self.style.WARNING("Advertencias detectadas:"))
            for warning in warnings:
                self.stdout.write(self.style.WARNING(f"- {warning}"))
            return

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS("Configuracion SMTP valida segun las reglas revisadas."))
