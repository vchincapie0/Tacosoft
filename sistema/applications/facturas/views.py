from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formulariosg
from .models import Facturas,IVA
#from .forms import 
from .forms import (
    FacturaCreateForm, 
    FacturaUpdateForm, 
    IVACreateForm, 
    IVAUpdateForm,
)

# Create your views here.
class IVAListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = IVA
    template_name = "facturas/list_IVA.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'facturas'

class IVACreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva factura'''
    model = IVA
    template_name = "facturas/add_IVA.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = IVACreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('facturas_app:list_IVA') 

class IVAUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de Facturas'''
    model =IVA 
    template_name = "facturas/update_IVA.html"
    login_url=reverse_lazy('users_app:login')
    form_class=IVAUpdateForm
    success_url= reverse_lazy('facturas_app:list_IVA')

class IVADeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = IVA
    template_name = "facturas/delete_IVA.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('facturas_app:list_IVA') 


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
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = FacturaCreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('facturas_app:list_factura')  

class FacturasUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de Facturas'''
    model =Facturas 
    template_name = "facturas/edit_factura.html"
    login_url=reverse_lazy('users_app:login')
    form_class=FacturaUpdateForm
    success_url= reverse_lazy('facturas_app:list_factura')

class FacturasDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar facturas'''
    model = Facturas
    template_name = "facturas/delete_fact.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('facturas_app:list_factura')
