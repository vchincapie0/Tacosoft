from django import forms
from .models import MateriaPrima, Desinfeccion, CaracteristicasOrganolepticas

class MateriaPrimaForm(forms.ModelForm):
    """Form definition for Materia Prima."""

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

class CaracteristicasMPForm(forms.ModelForm):

    class Meta:

        model = CaracteristicasOrganolepticas
        fields=(
            'mp_lote',
            'olor',
            'textura',
            'limpieza',
            'empaque',
            'color',
             
        )

        widgets={
                'olor':forms.CheckboxInput(),
                'textura':forms.CheckboxInput(),
                'limpieza':forms.CheckboxInput(),
                'empaque':forms.CheckboxInput(),
                'color':forms.CheckboxInput(),    
            }
                       
class DesinfeccionMPForm(forms.ModelForm):

    class Meta:

        model = Desinfeccion
        fields=(
            'mp_lote',
            'des_nombre',
            'concentracion',
            'responsable',
            'tiempo_inicio',
            'tiempo_fin',
            'obsevacion', 
             
        )

        widgets={
            'des_nombre':forms.TextInput(attrs={'placeholder': 'Nombre Desinfectante'}),
            'concentracion':forms.NumberInput(attrs={'max_length': '2'}),
            'responsable':forms.TextInput(attrs={'placeholder': 'Nombre Responsable'}),
            'tiempo_inicio':forms.TimeInput(attrs={'type':'time'}),
            'tiempo_fin':forms.TimeInput(attrs={'type':'time'}),
            'obsevacion':forms.Textarea(attrs={'placeholder': 'Escriba su observacion'})    
            }    