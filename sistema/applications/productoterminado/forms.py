from django import forms
from django.utils import timezone
from .models import ProductoTerminado, ExistenciaPT, CaracteristicasOrganolepticasPT,EmpaqueProductoTerminado,Vacio

class ProductoTerminadoForm(forms.ModelForm):
    """Form definition for Producto Terminado."""

    class Meta:
        """Meta definition for ProductoTerminadoform."""

        model = ProductoTerminado
        fields = (
<<<<<<< HEAD
            #'PT_lote',
            'IdCoccion',
            'IdPicado',
            'PT_cantidad',   
            'PT_prodNombre',
            'PT_fechapreparacion',
            'PT_fechavencimiento',
=======
            'pt_lote',
            'idCoccion',
            'idPicado',
            'pt_cantidad',   
            'pt_nombre',
            'pt_fechapreparacion',
            'pt_fechavencimiento',
>>>>>>> 66d77bd3f5a1294c1e034fa1a8f479d6c3f4a3a2
            )
        
        widgets={
            'pt_nombre':forms.TextInput(attrs={'placeholder': 'Nombre Producto'}),
            'pt_fechapreparacion':forms.SelectDateWidget(),
            'pt_fechavencimiento':forms.SelectDateWidget(),
        }
    def pt_cantidad(self):
        cantidad = self.cleaned_data['PT_cantidad']
        if cantidad <= 0:
            raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
        return cantidad


    def clean_PT_fechavencimiento(self):
        fecha_vencimiento = self.cleaned_data['PT_fechavencimiento']
        fecha_actual = timezone.now().date()

        # Comprueba si la fecha de vencimiento es anterior a la fecha actual
        if fecha_vencimiento < fecha_actual:
            raise forms.ValidationError('La fecha de vencimiento debe ser posterior a la fecha actual.')

        return fecha_vencimiento

class CaracteristicasOrganolepticasPTForm(forms.ModelForm):

    class Meta:

        model = CaracteristicasOrganolepticasPT
        fields=(
            'pt_lote',
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
        
class CaracteristicasPTUpdateForm(forms.ModelForm):

    class Meta:

        model = CaracteristicasOrganolepticasPT
        fields=(

            'pt_lote',
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
            'pt_lote',
            'exisPT_CantidadIngresada',
            'exisPT_CantidadEgresada',
          
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
        
class EmpaqueProductoTerminadoForm(forms.ModelForm):

    class Meta:

        model = EmpaqueProductoTerminado
        fields=(
            'pt_lote',
            'emp_pesoKg',
            'emp_cantidadBolsas',
          
        )     
        
        def clean_Emp_pesoKgPT(self):
            pesoPT  = self.cleaned_data['emp_pesoKgPT']
            if pesoPT<= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return pesoPT
        
        def clean_Emp_cantidadBolsas(self):
            cantidadbol  = self.cleaned_data['emp_cantidadBolsas']
            if cantidadbol<= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return cantidadbol
        
class VacioForm(forms.ModelForm):

    class Meta:

        model = Vacio
        fields=(
            'pt_lote',
            'cantidad_bolsas_rechazadas',
            'cantidad_bolsas_liberadas',
          
        )     
        
        def clean_Cantidad_bolsas_rechazadas(self):
            cantidadre  = self.cleaned_data['Cantidad_bolsas_rechazadas']
            if cantidadre<= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return cantidadre
        
        def clean_Cantidad_bolsas_liberadas(self):
            cantidadlib  = self.cleaned_data['Cantidad_bolsas_liberadas']
            if cantidadlib <= 0:
                raise forms.ValidationError("La cantidad debe ser un número mayor que 0.")
            return cantidadlib
        