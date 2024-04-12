from django import forms
from .models import Facturas

class FacturaCreateForm(forms.ModelForm):
    '''Formulario para crear facturas'''
    class Meta:
        model = Facturas
        fields = (
            'num_factura',
            'fac_proveedor',
            'fac_numeroPedido',
            'fac_fechaLlegada',
            'fac_numeroUnidades',
            'img_factura',
            'fac_subtotal',
            'fac_iva',
            )
        
        widgets={
            'num_factura':forms.NumberInput(attrs={'class':'form-control'}),
            'fac_proveedor':forms.Select(attrs={'class':'form-select'}),
            'fac_numeroPedido':forms.Select(attrs={'class':'form-select'}),
            'fac_fechaLlegada':forms.SelectDateWidget(),
            'fac_numeroUnidades':forms.NumberInput(attrs={'class':'form-control'}), 
            'img_factura':forms.FileInput(attrs={'class':'form-control'}),
            'fac_subtotal':forms.NumberInput(attrs={'class':'form-control','placeholder':'Subtotal'}),
            'fac_iva':forms.Select(attrs={'class':'form-select'}),
        }

class FacturaUpdateForm(forms.ModelForm):
    '''Formulario para editar facturas'''
    class Meta:
        model = Facturas
        fields = (
            'num_factura',
            'fac_proveedor',
            'fac_numeroPedido',
            'fac_fechaLlegada',
            'fac_numeroUnidades',
            'img_factura',
            'fac_subtotal',
            'fac_iva',
            )
        
        widgets={
            'num_factura':forms.NumberInput(attrs={'class':'form-control'}),
            'fac_proveedor':forms.Select(attrs={'class':'form-select'}),
            'fac_numeroPedido':forms.Select(attrs={'class':'form-select'}),
            'fac_fechaLlegada':forms.SelectDateWidget(),
            'fac_numeroUnidades':forms.NumberInput(attrs={'class':'form-control'}), 
            'img_factura':forms.FileInput(attrs={'class':'form-control'}),
            'fac_subtotal':forms.NumberInput(attrs={'class':'form-control','placeholder':'Subtotal'}),
            'fac_iva':forms.Select(attrs={'class':'form-select'}),
        }
        