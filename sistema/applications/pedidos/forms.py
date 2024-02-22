from django import forms
from .models import Pedidos

class PedidosCreateForm(forms.ModelForm):

    PEDIDO_CHOICES=(
        ('0','materia prima'),
        ('1','insumos'),
    )

    tipo_pedido=forms.CharField(
        label='Tipo de Pedido',
        required=True,
        choices=PEDIDO_CHOICES,
        max_length=1,
    )

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
            'pedi_comprobatePago':forms.TextInput(attrs={'placeholder':'Comprobante de Pago'}),
            'pedi_proveedor':forms.Select(),
            'pedi_materiaprima':forms.SelectMultiple(),
            'pedi_insumos':forms.SelectMultiple(),

        }

class PedidosUpdateForm(forms.ModelForm):

    PEDIDO_CHOICES=(
        ('0','materia prima'),
        ('1','insumos'),
    )

    tipo_pedido=forms.CharField(
        label='Tipo de Pedido',
        required=True,
        choices=PEDIDO_CHOICES,
        max_length=1,
    )

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
            'pedi_comprobatePago':forms.TextInput(attrs={'placeholder':'Comprobante de Pago'}),
            'pedi_proveedor':forms.Select(),
            'pedi_materiaprima':forms.SelectMultiple(),
            'pedi_insumos':forms.SelectMultiple(),

        }
