import re
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth import authenticate
from .models import Picado, Coccion

class addPicado(forms.ModelForm):

    """Form definition Picado."""

    class Meta:
        """Meta definition Picadoform."""

        model = Picado
        fields = (
            'cod_procesamiento',
            'pica_nombre',
            'pica_cantidad',
            'pica_pesoMPposproceso',
            'pica_merma',
            'pica_check',
            )
        
        widgets={
            'cod_procesamiento':forms.NumberInput(attrs={'class':'form-control'}),
            'pica_nombre':forms.TextInput(attrs={'placeholder': 'Nombre del Producto'}),
            'pica_cantidad':forms.NumberInput(attrs={'placeholder': 'Peso '}),
            'pica_pesoMPposproceso':forms.NumberInput(attrs={'placeholder': 'Peso Post Proceso'}),
            'pica_merma':forms.NumberInput(attrs={'placeholder': 'Peso Merma'}),
            'pica_check':forms.Select(attrs={'class': 'form-select'}),
            
        }
        
    def clean_pica_nombre(self):
        nombre = self.cleaned_data['pica_nombre']
        if not re.match("^[a-zA-Z ]+$", nombre):
            raise forms.ValidationError("El nombre no debe contener números o caracteres especiales.")
        return nombre
    

    def clean_pica_cantidad(self):
        cantidad = self.cleaned_data['pica_cantidad']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad
    
    def clean_proces_pesoPostProceso(self):
        cantidad = self.cleaned_data['pica_pesoMPposproceso']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad
    
    def clean_pica_merma(self):
        cantidad = self.cleaned_data['pica_merma']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad

import re
from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth import authenticate
from .models import Picado

class addCoccion(forms.ModelForm):

    """Form definition coccion."""

    class Meta:
        """Meta definition Coccionform."""

        model = Coccion
        fields = (
            'cod_procesamiento',
            'cocc_nombre',
            'cocc_cantidad',
            'cocc_pesoMPposproceso',
            'cocc_merma',
            'cocc_tiempoCoccion',
            'cocc_temperaturafinal',
            'cocc_check',
            )
        
        widgets={
            
            'cod_procesamiento':forms.NumberInput(attrs={'class':'form-control'}),
            'cocc_nombre':forms.TextInput(attrs={'placeholder': 'Nombre del Producto'}),
            'cocc_cantidad':forms.NumberInput(attrs={'placeholder': 'Peso '}),
            'cocc_pesoMPposproceso':forms.NumberInput(attrs={'placeholder': 'Peso Post Proceso'}),
            'pica_merma':forms.NumberInput(attrs={'placeholder': 'Peso Merma'}),
            'cocc_tiempoCoccion':forms.TimeInput(attrs={'tiempo de coccion'}),
            'cocc_temperaturafinal':forms.FloatField(attrs={'Temperatura Final'}),
            'pica_check':forms.Select(attrs={'class': 'form-select'}),
        }