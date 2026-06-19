from django.conf import settings
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = "Muestra la configuracion de correo cargada sin exponer credenciales sensibles."

    def handle(self, *args, **options):
        email_delivery_provider = getattr(settings, "EMAIL_DELIVERY_PROVIDER", "smtp")
        email_backend = getattr(settings, "EMAIL_BACKEND", "")
        email_host = getattr(settings, "EMAIL_HOST", "")
        email_port = getattr(settings, "EMAIL_PORT", "")
        email_use_tls = bool(getattr(settings, "EMAIL_USE_TLS", False))
        email_use_ssl = bool(getattr(settings, "EMAIL_USE_SSL", False))
        email_host_user = getattr(settings, "EMAIL_HOST_USER", "")
        default_from_email = getattr(settings, "DEFAULT_FROM_EMAIL", "")
        server_email = getattr(settings, "SERVER_EMAIL", "")
        has_password = bool((getattr(settings, "EMAIL_HOST_PASSWORD", "") or "").strip())
        resend_api_key = (getattr(settings, "RESEND_API_KEY", "") or "").strip()
        resend_from_email = (getattr(settings, "RESEND_FROM_EMAIL", "") or "").strip()

        rows = [
            f"EMAIL_DELIVERY_PROVIDER={email_delivery_provider}",
            f"EMAIL_BACKEND={email_backend}",
            f"EMAIL_HOST={email_host}",
            f"EMAIL_PORT={email_port}",
            f"EMAIL_USE_TLS={email_use_tls}",
            f"EMAIL_USE_SSL={email_use_ssl}",
            f"EMAIL_HOST_USER={email_host_user}",
            f"DEFAULT_FROM_EMAIL={default_from_email}",
            f"SERVER_EMAIL={server_email}",
            f"EMAIL_HOST_PASSWORD={'configurada' if has_password else 'no configurada'}",
            f"RESEND_API_KEY={'configurada' if resend_api_key else 'no configurada'}",
            f"RESEND_FROM_EMAIL={resend_from_email}",
        ]

        for row in rows:
            self.stdout.write(row)

        warnings = []

        if not (default_from_email or "").strip():
            warnings.append("DEFAULT_FROM_EMAIL esta vacio.")

        if email_delivery_provider == "resend":
            if email_backend != "bongusto.modules.auth.email_backends.ResendEmailBackend":
                warnings.append("EMAIL_BACKEND no apunta al backend personalizado de Resend.")
            if not resend_api_key:
                warnings.append("RESEND_API_KEY esta vacia.")
            if not resend_from_email:
                warnings.append("RESEND_FROM_EMAIL esta vacio.")
        else:
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

        if warnings:
            self.stdout.write("")
            self.stdout.write(self.style.WARNING("Advertencias detectadas:"))
            for warning in warnings:
                self.stdout.write(self.style.WARNING(f"- {warning}"))
            return

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS("Configuracion de correo valida segun las reglas revisadas."))
