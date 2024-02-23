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
        max_length=1,
        widget=forms.RadioSelect(
            choices=PEDIDO_CHOICES
        ),
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
            'pedi_fecha':forms.SelectDateWidget(),
            'pedi_comprobatePago':forms.TextInput(attrs={'placeholder':'Comprobante de Pago'}),
            'pedi_proveedor':forms.Select(),
            'pedi_materiaprima':forms.SelectMultiple(),
            'pedi_insumos':forms.SelectMultiple(),

        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Disable Insumos field initially
        #self.fields['pedi_insumos'].disabled = True

        # Add JavaScript event handler to toggle the disabled state
        self.fields['tipo_pedido'].widget.attrs['onchange'] = (
            'toggleInsumosField(this.value);'
        )

    class Media:
        js = (
            'https://code.jquery.com/jquery-3.7.1.min.js',
        )

class PedidosUpdateForm(forms.ModelForm):

    PEDIDO_CHOICES=(
        ('0','materia prima'),
        ('1','insumos'),
    )

    tipo_pedido=forms.CharField(
        label='Tipo de Pedido',
        required=True,
        max_length=1,
        widget=forms.Select(
            choices=PEDIDO_CHOICES
        ),
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
