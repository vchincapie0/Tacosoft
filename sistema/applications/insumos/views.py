from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import ImplementosTrabajo,InsumosGenerico
from .forms import ImplementosTrabajoForm, ImplementosUpdateForm,InsumosGenericoForm

# Create your views here.

class InsumosGenericoListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = InsumosGenerico
    template_name = "insumos/list_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'insumos'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = InsumosGenerico.objects.filter(
           it_nombre__icontains = palabra_clave
        )
        return lista
class InsumosGenericoCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = InsumosGenerico
    template_name = "insumos/add_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class=InsumosGenericoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('insumos_app:list_insumos_generico')

class InsumosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = ImplementosTrabajo
    template_name = "insumos/list_insumos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'insumos'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = ImplementosTrabajo.objects.filter(
           it_nombre__it_nombre__icontains = palabra_clave
        )
        return lista
    
class ImplementosCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = ImplementosTrabajo
    template_name = "insumos/add_insumos.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = ImplementosTrabajoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('insumos_app:list_insumos')  

class ImplementosUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de user'''
    model = ImplementosTrabajo
    template_name = "insumos/update_insumos.html"
    login_url=reverse_lazy('users_app:login')
    form_class=ImplementosUpdateForm
    success_url= reverse_lazy('insumos_app:list_insumos')
    
class ImplementosDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = ImplementosTrabajo
    template_name = "insumos/delete_insumos.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('insumos_app:list_insumos')

