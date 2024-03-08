import re
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth import authenticate
from .models import Procesamiento

class ProcesamientoForm(forms.ModelForm):

    """Form definition Procesamiento."""

    class Meta:
        """Meta definition Procesamientoform."""

        model = Procesamiento
        fields = (
            'proces_nombreProd',
            'proces_pesoMpCruda',
            'proces_pesoPostProceso',
            'proces_merma',
            'proces_check',
            )
        
        widgets={
            'proces_nombreProd':forms.TextInput(attrs={'placeholder': 'Nombre del Producto'}),
            'proces_pesoMpCruda':forms.NumberInput(attrs={'placeholder': 'Peso Crudo'}),
            'proces_pesoPostProceso':forms.NumberInput(attrs={'placeholder': 'Peso Post Proceso'}),
            'proces_merma':forms.NumberInput(attrs={'placeholder': 'Peso Merma'}),
            'proces_check':forms.Select(attrs={'placeholder': 'Estado de Chequeo'}),



            
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