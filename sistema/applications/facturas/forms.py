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
            'fac_subtotal',
            'fac_iva',
            )
        
        widgets={
            
        }