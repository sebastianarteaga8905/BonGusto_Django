from __future__ import annotations

import resend
from django.conf import settings
from django.core.mail.backends.base import BaseEmailBackend


class ResendEmailBackend(BaseEmailBackend):
    """Backend de Django que envia correos usando la API HTTPS de Resend."""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.api_key = (getattr(settings, "RESEND_API_KEY", "") or "").strip()
        self.from_email = (
            getattr(settings, "RESEND_FROM_EMAIL", "")
            or getattr(settings, "DEFAULT_FROM_EMAIL", "")
            or ""
        ).strip()

    def send_messages(self, email_messages):
        if not email_messages:
            return 0

        if not self.api_key:
            if self.fail_silently:
                return 0
            raise ValueError("RESEND_API_KEY no esta configurada.")

        if not self.from_email:
            if self.fail_silently:
                return 0
            raise ValueError("RESEND_FROM_EMAIL o DEFAULT_FROM_EMAIL no estan configurados.")

        resend.api_key = self.api_key
        sent_count = 0

        for message in email_messages:
            payload = {
                "from": message.from_email or self.from_email,
                "to": list(message.to or []),
                "subject": message.subject,
                "text": message.body or "",
            }

            for content, mimetype in getattr(message, "alternatives", []) or []:
                if mimetype == "text/html":
                    payload["html"] = content
                    break

            if message.cc:
                payload["cc"] = list(message.cc)

            if message.bcc:
                payload["bcc"] = list(message.bcc)

            if message.reply_to:
                payload["reply_to"] = list(message.reply_to)

            try:
                resend.Emails.send(payload)
                sent_count += 1
            except Exception:
                if not self.fail_silently:
                    raise

        return sent_count
