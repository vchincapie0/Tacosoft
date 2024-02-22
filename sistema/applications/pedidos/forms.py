from django import forms
from .models import Pedidos

class PedidosCreateForm(forms.ModelForm):

    class Meta:

        model=Pedidos
        fields=(
            'ref_pedido',
            'pedi_user',
            'pedi_fecha',
            'pedi_estado',
            'pedi_comprobatePago',
            'pedi_proveedor',
            'pedi_materiaprima',
            'pedi_insumos',
        )

        widgets={
            'ref_pedido':forms.NumberInput(attrs={'placeholder': 'Referencia del pedido'}),
            'pedi_fecha':forms.DateInput(),
            'pedi_comprobantePago':forms.TextInput(attrs={'placeholder':'Comprobante de Pago'}),
            'pedi_proveedor':forms.Select(),
            'pedi_materiaprima':forms.SelectMultiple(),
            'pedi_insumos':forms.SelectMultiple(),

        }
