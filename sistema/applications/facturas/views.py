from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Facturas
#from .forms import 
from .forms import FacturaCreateForm

# Create your views here.

class FacturasListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = Facturas
    template_name = "facturas/list_factura.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'facturas'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Facturas.objects.filter(
            num_factura__icontains = palabra_clave
        )
        return lista
    
class FacturasCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva factura'''
    model = Facturas
    template_name = "facturas/add_fact.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = FacturaCreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('facturas_app:list_factura')  