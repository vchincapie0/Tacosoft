from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
# Importacion de modelos y formularios
from .models import Proveedores
from .forms import ProveedorCreateForm, ProveedoresUpdateForm

class ProveedoresListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = Proveedores
    template_name = "proveedores/list_proveedores.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'proveedor'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Proveedores.objects.filter(
            prov_nombre__icontains = palabra_clave
        )
        return lista
