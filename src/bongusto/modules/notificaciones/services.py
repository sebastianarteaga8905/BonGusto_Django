"""Servicios del modulo de notificaciones para web y API."""

from collections import Counter

from django.db import connection
from django.utils import timezone

from bongusto.domain.models import NotificacionCliente, Usuario


class NotificacionService:
    """Agrupa la logica simple de notificaciones para administradores y clientes."""

    def _ensure_schema(self):
        existing_tables = connection.introspection.table_names()
        table_name = NotificacionCliente._meta.db_table
        if table_name not in existing_tables:
            with connection.schema_editor() as schema_editor:
                schema_editor.create_model(NotificacionCliente)
            return

        existing_columns = {
            column.name for column in connection.introspection.get_table_description(connection.cursor(), table_name)
        }

        with connection.cursor() as cursor:
            if "titulo" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN titulo VARCHAR(120) DEFAULT ''")
            if "mensaje" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN mensaje TEXT DEFAULT ''")
            if "tipo" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN tipo VARCHAR(30) DEFAULT 'general'")
            if "leida" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN leida SMALLINT DEFAULT 0")
            if "fecha_envio" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN fecha_envio TIMESTAMP NULL")
                cursor.execute(f"UPDATE {table_name} SET fecha_envio = CURRENT_TIMESTAMP WHERE fecha_envio IS NULL")
            if "fecha_lectura" not in existing_columns:
                cursor.execute(f"ALTER TABLE {table_name} ADD COLUMN fecha_lectura TIMESTAMP NULL")

    def listar_todas(self):
        self._ensure_schema()
        return NotificacionCliente.objects.select_related("id_usuario").all()

    def resumen_admin(self):
        self._ensure_schema()
        base = NotificacionCliente.objects.all()
        hoy = timezone.localdate()
        tipos = dict(Counter(
            (item.tipo or "general").strip().lower()
            for item in base.only("tipo")
        ))
        return {
            "total": base.count(),
            "pendientes": base.filter(leida=False).count(),
            "leidas": base.filter(leida=True).count(),
            "enviadas_hoy": base.filter(fecha_envio__date=hoy).count(),
            "tipos": tipos,
        }

    def listar_clientes_activos(self):
        return Usuario.objects.filter(
            tipo_usuario__iexact="cliente",
            estado__iexact="activo",
        ).order_by("nombre", "apellido", "correo")

    def crear_para_usuario(self, usuario, titulo, mensaje, tipo="general"):
        self._ensure_schema()
        return NotificacionCliente.objects.create(
            id_usuario=usuario,
            titulo=titulo,
            mensaje=mensaje,
            tipo=tipo or "general",
        )

    def crear_para_todos(self, titulo, mensaje, tipo="general"):
        self._ensure_schema()
        clientes = list(self.listar_clientes_activos())
        registros = [
            NotificacionCliente(
                id_usuario=cliente,
                titulo=titulo,
                mensaje=mensaje,
                tipo=tipo or "general",
            )
            for cliente in clientes
        ]
        if registros:
            NotificacionCliente.objects.bulk_create(registros)
        return len(registros)

    def listar_para_usuario(self, usuario):
        self._ensure_schema()
        return NotificacionCliente.objects.filter(id_usuario=usuario).order_by("-fecha_envio", "-id_notificacion")

    def contar_no_leidas(self, usuario):
        self._ensure_schema()
        return NotificacionCliente.objects.filter(id_usuario=usuario, leida=False).count()

    def marcar_leida(self, pk, usuario):
        self._ensure_schema()
        notificacion = NotificacionCliente.objects.filter(pk=pk, id_usuario=usuario).first()
        if not notificacion:
            return None
        if not notificacion.leida:
            notificacion.leida = True
            notificacion.fecha_lectura = timezone.now()
            notificacion.save(update_fields=["leida", "fecha_lectura"])
        return notificacion

    def marcar_todas_leidas(self, usuario):
        self._ensure_schema()
        ahora = timezone.now()
        return NotificacionCliente.objects.filter(
            id_usuario=usuario,
            leida=False,
        ).update(leida=True, fecha_lectura=ahora)


__all__ = ["NotificacionService"]


