from django import forms
from .models import ProductoTerminado, ExistenciaPT, CaracteristicasOrganolepticasPT,EmpaqueProductoTerminado,Vacio

class ProductoTerminado(forms.ModelForm):
    """Form definition for Producto Terminado."""

    class Meta:
        """Meta definition for ProductoTerminadoform."""

        model = ProductoTerminado
        fields = (
            'PT_lote',
            'IdCoccion',
            'IdPicado',
            'PT_prodNombre',
            'PT_fechapreparacion',
            'PT_fechavencimiento',
            )
        
        widgets={
            'PT_prodNombre':forms.TextInput(attrs={'placeholder': 'Nombre Producto'}),
            'PT_fechapreparacion':forms.SelectDateWidget(),
            'PT_fechavencimiento':forms.SelectDateWidget(),
        }
    
class CaracteristicasOrganolepticasPTForm(forms.ModelForm):

    class Meta:

        model = CaracteristicasOrganolepticasPT
        fields=(
            'PT_lote',
            'observaciones',
            'olor',
            'sabor',
            'textura',
            'color',
            'estado',
             
        )

        widgets={
                
                'observaciones':forms.Textarea(),
                'olor':forms.CheckboxInput(),
                'sabor':forms.CheckboxInput(),
                'textura':forms.CheckboxInput(),
                'color':forms.CheckboxInput(),
                'estado':forms.Select(),     
            }
        
            
            
class ExistenciaPTForm(forms.ModelForm):

    class Meta:

        model = ExistenciaPT
        fields=(
            'PT_lote',
            'ExisPT_CantidadIngresada',
            'ExisPT_CantidadEgresada',
          
        )     
        
        def clean_ExisPT_CantidadIngresada(self):
            cantidadingr  = self.cleaned_data['ExisPT_CantidadIngresada']
            if cantidadingr<= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return cantidadingr
        
        def clean_ExisPT_CantidadEgresada(self):
            cantidadegr  = self.cleaned_data['ExisPT_CantidadEgresada']
            if cantidadegr<= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return cantidadegr