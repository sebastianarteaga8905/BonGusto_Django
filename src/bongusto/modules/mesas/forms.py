"""Formularios del modulo mesas."""

from django import forms

from bongusto.modules.mesas.models import Mesa


class MesaForm(forms.ModelForm):
    activa = forms.BooleanField(required=False, initial=True)

    class Meta:
        model = Mesa
        fields = ["numero_mesa", "nombre", "capacidad", "activa"]

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        activa_inicial = getattr(self.instance, "activa", 1) if self.instance else 1
        self.fields["activa"].initial = bool(int(activa_inicial or 0))

    def clean_numero_mesa(self):
        numero = self.cleaned_data.get("numero_mesa")
        if numero is None or int(numero) <= 0:
            raise forms.ValidationError("El numero de mesa debe ser mayor a cero.")
        return numero

    def clean_capacidad(self):
        capacidad = self.cleaned_data.get("capacidad")
        if capacidad is None or int(capacidad) <= 0:
            raise forms.ValidationError("La capacidad debe ser mayor a cero.")
        return capacidad

    def clean_activa(self):
        return 1 if self.cleaned_data.get("activa") else 0


__all__ = ["MesaForm"]
