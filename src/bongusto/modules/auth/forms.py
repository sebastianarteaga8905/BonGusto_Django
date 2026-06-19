"""Formularios del modulo auth."""

from django import forms
from django.conf import settings
from django.contrib.auth.tokens import PasswordResetTokenGenerator
from django.core.mail import EmailMultiAlternatives
from django.template import loader
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_encode

from bongusto.domain.models import Usuario
from bongusto.modules.shared.security import (
    PASSWORD_POLICY_HELP,
    hash_contrasena,
    validar_contrasena_segura,
)


class BonGustoPasswordResetTokenGenerator(PasswordResetTokenGenerator):
    """Token de recuperacion adaptado al modelo Usuario del proyecto."""

    def _make_hash_value(self, user, timestamp):
        correo = (getattr(user, "correo", "") or "").strip().lower()
        clave = getattr(user, "clave", "") or ""
        estado = (getattr(user, "estado", "") or "").strip().lower()
        return f"{user.pk}{clave}{timestamp}{correo}{estado}"


password_reset_token_generator = BonGustoPasswordResetTokenGenerator()


class BonGustoPasswordResetForm(forms.Form):
    """Formulario que envía enlaces de recuperacion para el modelo Usuario."""

    email = forms.EmailField(
        label="Correo electronico",
        max_length=100,
        widget=forms.EmailInput(
            attrs={
                "autocomplete": "email",
                "placeholder": "correo@bongusto.com",
            }
        ),
    )

    def get_users(self, email):
        correo = (email or "").strip().lower()
        if not correo:
            return Usuario.objects.none()

        return (
            Usuario.objects.filter(correo__iexact=correo, estado__iexact="Activo")
            .exclude(correo__isnull=True)
            .exclude(correo__exact="")
        )

    def save(
        self,
        domain_override=None,
        subject_template_name="registration/password_reset_subject.txt",
        email_template_name="registration/password_reset_email.txt",
        use_https=False,
        token_generator=password_reset_token_generator,
        from_email=None,
        request=None,
        html_email_template_name=None,
        extra_email_context=None,
    ):
        email = self.cleaned_data["email"]
        if not request and not domain_override:
            raise ValueError("Se requiere request o domain_override para construir el enlace de recuperacion.")

        domain = domain_override or request.get_host()
        protocol = "https" if use_https else "http"

        for user in self.get_users(email):
            context = {
                "email": user.correo,
                "domain": domain,
                "site_name": "BonGusto",
                "uid": urlsafe_base64_encode(force_bytes(user.pk)),
                "user": user,
                "token": token_generator.make_token(user),
                "protocol": protocol,
                **(extra_email_context or {}),
            }

            subject = loader.render_to_string(subject_template_name, context)
            subject = "".join(subject.splitlines()).strip()
            body = loader.render_to_string(email_template_name, context)

            message = EmailMultiAlternatives(
                subject=subject,
                body=body,
                from_email=from_email or settings.DEFAULT_FROM_EMAIL,
                to=[user.correo],
            )

            if html_email_template_name:
                html_body = loader.render_to_string(html_email_template_name, context)
                message.attach_alternative(html_body, "text/html")

            message.send(fail_silently=False)


class BonGustoSetPasswordForm(forms.Form):
    """Formulario para actualizar la clave del modelo Usuario."""

    error_messages = {
        "password_mismatch": "Las contrasenas no coinciden.",
    }

    new_password1 = forms.CharField(
        label="Nueva contrasena",
        strip=False,
        widget=forms.PasswordInput(
            attrs={
                "autocomplete": "new-password",
                "placeholder": "Nueva contrasena",
            }
        ),
        help_text=PASSWORD_POLICY_HELP,
    )
    new_password2 = forms.CharField(
        label="Confirmar contrasena",
        strip=False,
        widget=forms.PasswordInput(
            attrs={
                "autocomplete": "new-password",
                "placeholder": "Confirma la contrasena",
            }
        ),
    )

    def __init__(self, user, *args, **kwargs):
        self.user = user
        super().__init__(*args, **kwargs)

    def clean(self):
        cleaned_data = super().clean()
        password1 = cleaned_data.get("new_password1") or ""
        password2 = cleaned_data.get("new_password2") or ""

        if password1 != password2:
            raise forms.ValidationError(
                self.error_messages["password_mismatch"],
                code="password_mismatch",
            )

        es_valida, error = validar_contrasena_segura(password1)
        if not es_valida:
            self.add_error("new_password1", error)

        return cleaned_data

    def save(self, commit=True):
        self.user.clave = hash_contrasena(self.cleaned_data["new_password1"])
        if commit:
            self.user.save(update_fields=["clave"])
        return self.user
