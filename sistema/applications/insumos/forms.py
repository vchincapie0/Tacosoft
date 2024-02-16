import re
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth import authenticate
from .models import ImplementosTrabajo

class ImplementosTrabajoForm(forms.ModelForm):

    """Form definition Implementos de Trabajo."""

    class Meta:
        """Meta definition for implementosTrabajoform."""

        model = ImplementosTrabajo
        fields = (
            'it_codigo',
            'it_nombre',
            'it_cantidad',
            'it_fechaEntrega',
            'it_estado',
            )
        
        widgets={
            'it_nombre':forms.TextInput(attrs={'placeholder': 'Nombre del Implemento'}),
            'it_cantidad':forms.NumberInput(attrs={'placeholder': 'Cantidad Entregada'}),
            'it_fechaEntrega':forms.SelectDateWidget(),
        }

    def clean_it_cantidad(self):
        cantidad = self.cleaned_data['it_cantidad']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad
    
    def clean_it_nombre(self):
        nombre = self.cleaned_data['it_nombre']
        if not re.match("^[a-zA-Z ]+$", nombre):
            raise forms.ValidationError("El nombre no debe contener números o caracteres especiales.")
        return nombre
    
class ImplementosUpdateForm(forms.ModelForm):
    """Form Update Implementos de Trabajo."""
    class Meta:

        model = ImplementosTrabajo
        fields = ['it_nombre', 'it_cantidad', 'it_fechaEntrega', 'it_estado']
    
    def clean_it_cantidad(self):
        cantidad = self.cleaned_data['it_cantidad']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad
    
    def clean_it_nombre(self):
        nombre = self.cleaned_data['it_nombre']
        if not re.match("^[a-zA-Z ]+$", nombre):
            raise forms.ValidationError("El nombre no debe contener números o caracteres especiales.")
        return nombre
