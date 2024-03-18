from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import ProductoTerminado,ExistenciaPT,CaracteristicasOrganolepticasPT
from .forms import ProductoTerminadoForm,CaracteristicasOrganolepticasPTForm

# Create your views here.

class ProduListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/list_produ.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'productoterminado'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = ProductoTerminado.objects.filter(
            PT_prodNombre__icontains = palabra_clave
        )
        return lista
    
class ProduCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea un producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/add_produ.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = ProductoTerminadoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('produ_app:list_produ')  

class ProduUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/update_produ.html"
    login_url=reverse_lazy('users_app:login')
    form_class=ProductoTerminadoForm
    success_url= reverse_lazy('produ_app:list_produ')
    
class ProduDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar los producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/delete_produ.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('produ_app:list_produ')

class ExistenciaPTView(LoginRequiredMixin, ListView):
    '''Vists para la creacion de la existencias producto terminado'''
    model = ExistenciaPT
    template_name = "productoterminado/existenciaPT.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('produ_app:exitenciaPT')

class CaracteristicasProductoTerminadoCreateView(LoginRequiredMixin, CreateView):
    '''Vista para la creacion de las caracteristicas organolepticas de la materia prima'''
    model = CaracteristicasOrganolepticasPT
    template_name = "productoterminado/caracteristicas_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = CaracteristicasOrganolepticasPTForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp')