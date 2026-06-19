from django.conf import settings
from django.core.mail import send_mail
from django.core.management.base import BaseCommand, CommandError


class Command(BaseCommand):
    help = "Envia un correo de prueba usando el backend configurado en Django."

    def add_arguments(self, parser):
        parser.add_argument("email", type=str)

    def handle(self, *args, **options):
        destination = options["email"]

        try:
            send_mail(
                "Prueba BonGusto",
                "Este es un correo de prueba enviado desde Django.",
                settings.DEFAULT_FROM_EMAIL,
                [destination],
                fail_silently=False,
            )
        except Exception as exc:
            raise CommandError(
                f"Error enviando correo via backend Django: {exc.__class__.__name__}: {exc}"
            ) from exc

        self.stdout.write(
            self.style.SUCCESS(f"Correo de prueba enviado a {destination}")
        )
