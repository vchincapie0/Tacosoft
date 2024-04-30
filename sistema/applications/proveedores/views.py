from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
# Importacion de modelos y formularios
from .models import Proveedores, ProveedoresAudit
from .forms import ProveedorCreateForm, ProveedoresUpdateForm

class ProveedoresListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los proveedores'''
    model = Proveedores
    template_name = "proveedores/list_proveedor.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'proveedor'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Proveedores.objects.filter(
            prov_nombre__icontains = palabra_clave,
            is_active=True  # Solo proveedores activos
        )
        return lista
    
class ProveedoresCreateView(LoginRequiredMixin,CreateView):
    '''Clase para crear nuevos proveedores'''
    model = Proveedores
    template_name = "proveedores/add_proveedor.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = ProveedorCreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('proveedores_app:list_proveedores') 

class ProveedorUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de proveedores'''
    model = Proveedores
    template_name = "proveedores/edit_proveedor.html"
    login_url=reverse_lazy('users_app:login')
    form_class=ProveedoresUpdateForm
    success_url= reverse_lazy('proveedores_app:list_proveedores')

class ProveedoresDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Proveedores'''
    model = Proveedores
    template_name = "proveedores/delete_proveedor.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('proveedores_app:list_proveedores')

class ProveedoresAuditListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de logs de proveedores'''
    model = ProveedoresAudit
    template_name = "proveedores/proveedoraudit.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'proveedor'