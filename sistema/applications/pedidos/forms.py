from django import forms
from .models import Pedidos

class PedidosCreateForm(forms.ModelForm):

    class Meta:

        model=Pedidos
        
