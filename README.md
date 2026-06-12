# BonGusto Django

Backend Django del sistema. Esta carpeta contiene solo el servidor.

## Ubicacion

- backend: [backend](/c:/Users/sebas/Desktop/bongusto_django/backend)
- proyecto: [bongusto_django](/c:/Users/sebas/Desktop/bongusto_django/backend/bongusto_django)
- apps Flutter relacionadas:
- [clientes](/c:/Users/sebas/Desktop/bongusto_django/flutter/clientes)
- [mesero](/c:/Users/sebas/Desktop/bongusto_django/flutter/mesero)

## Estructura

```text
backend/
`-- bongusto_django/
    |-- manage.py
    |-- pyproject.toml
    |-- requirements.txt
    `-- src/
```

## Arranque local

```powershell
cd C:\Users\sebas\Desktop\bongusto_django\backend\bongusto_django
.\.venv\Scripts\Activate.ps1
python manage.py check
python manage.py runserver 0.0.0.0:8001
```

## Integracion

- `flutter/clientes` y `flutter/mesero` consumen este backend por API.
- No debe haber dependencias directas de codigo entre Django y Flutter.
- Los scripts de apoyo quedaron en [scripts](/c:/Users/sebas/Desktop/bongusto_django/scripts).
