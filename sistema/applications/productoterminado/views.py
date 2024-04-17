from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import ProductoTerminado,ExistenciaPT,CaracteristicasOrganolepticasPT,EmpaqueProductoTerminado
from .forms import ProductoTerminadoForm,CaracteristicasOrganolepticasPTForm,EmpaqueProductoTerminadoForm

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
            pt_nombre__pt_nombre__icontains = palabra_clave
        )
        return lista
    
class ProduCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea un producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/add_produ.html"
    login_url=reverse_lazy('users_app:login')
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
    template_name = "productoterminado/caracteristicas_PT.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = CaracteristicasOrganolepticasPTForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('produ_app:list_produ')

class ProductoTerminadoDetailView(LoginRequiredMixin, DetailView):
    
    '''Vista donde se muestran los detalles de producto terminado'''
    model = ProductoTerminado
    template_name = "productoterminado/detail_PT.html"
    login_url=reverse_lazy('users_app:login')
    context_object_name = 'productoterminado'

class EmpaqueProductoTerminadoCreateView(LoginRequiredMixin, CreateView):
    '''Vists para la creacion del empaque producto terminado'''
    model = EmpaqueProductoTerminado
    template_name = "productoterminado/empaque_pt.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = EmpaqueProductoTerminadoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('produ_app:list_produ')
    
    def form_valid(self, form):
        '''funcion para automatizar el campo '''
        user = self.request.user
             # Guarda el formulario sin commit para asignar manualmente el usuario
        empaque = form.save(commit=False)
             # Asigna el usuario al campo pedi_user
        empaque.responsable = user
             # Ahora sí, guarda el pedido en la base de datos
        empaque.save()
        return super().form_valid(form)    