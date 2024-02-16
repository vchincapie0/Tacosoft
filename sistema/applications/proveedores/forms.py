import re
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth import authenticate
#Importación de modelos
from .models import Proveedores

class ProveedorCreateForm(forms.ModelForm):
    """Form definition Proveedores."""

    class Meta:

        model=Proveedores
        fields=(
            'nit',
            'prov_nombre',
            'prov_telefono',
        )

        widgets={
            'prov_nombre':forms.TextInput(attrs={'placeholder': 'Nombre del Implemento'}),
            'prov_telefono':forms.TextInput(attrs={'placeholder': 'Teléfono', 'type':'number'}),
        }

    def clean_prov_telefono(self):
        cantidad = self.cleaned_data['prov_telefono']
        if len(cantidad) < 10:
            raise forms.ValidationError("El teléfono debe tener al menos 10 digitos.")
        return cantidad
    
    def clean_prov_nombre(self):
        nombre = self.cleaned_data['prov_nombre']
        if not re.match("^[a-zA-Z ]+$", nombre):
            raise forms.ValidationError("El nombre no debe contener números o caracteres especiales.")
        return nombre

class ProveedoresUpdateForm(forms.ModelForm):
    """Form Update Proveedores."""
    class Meta:

        model = Proveedores
        fields = ['nit','prov_nombre','prov_telefono']
    
    def clean_prov_telefono(self):
        cantidad = self.cleaned_data['prov_telefono']
        if len(cantidad) < 10:
            raise forms.ValidationError("El teléfono debe tener al menos 10 digitos.")
        return cantidad
    
    def clean_prov_nombre(self):
        nombre = self.cleaned_data['prov_nombre']
        if not re.match("^[a-zA-Z ]+$", nombre):
            raise forms.ValidationError("El nombre no debe contener números o caracteres especiales.")
        return nombre
