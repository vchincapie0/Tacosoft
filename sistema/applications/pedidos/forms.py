from django import forms
from .models import Pedidos
from applications.materiaprima.models import MateriaPrima

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

class PedidosAddMpCreateFrom(forms.ModelForm):
    """Form definition para crear materia prima en el formulario de pedidos."""

    class Meta:
        """Meta definition for MateriaPrimaform."""

        model = MateriaPrima
        fields = (
            'mp_lote',
            'mp_nombre',
            'mp_tipo',
            'mp_cantidad',
            'mp_fechallegada',
            'mp_fechavencimiento',
            )
        
        widgets={
            'mp_nombre':forms.TextInput(attrs={'placeholder': 'Nombre Materia Prima'}),
            'mp_fechallegada':forms.SelectDateWidget(),
            'mp_fechavencimiento':forms.SelectDateWidget(),
        }
    
    def clean_it_cantidad(self):
        cantidad = self.cleaned_data['it_cantidad']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad