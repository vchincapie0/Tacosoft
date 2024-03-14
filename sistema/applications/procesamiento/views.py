from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Procesamientos
from .forms import ProcesamientosForm, ProcesamientosUpdateForm

# Create your views here.

class ProcesamientosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de Procesamiento'''
    model = Procesamientos
    template_name = "Procesamientos/list_procesamientos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Procesamientos.objects.filter(
            it_nombre__icontains = palabra_clave
        )
        return lista
    
class ProcesamientosCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea un procesamiento'''
    model = Procesamientos
    template_name = "procesamientos/add_procesamientos.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = ProcesamientosForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('procesamientos_app:list_procesamientos')  

class ProcesamientosUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de procesamientos'''
    model = Procesamientos
    template_name = "procesamientos/update_procesamientos.html"
    login_url=reverse_lazy('users_app:login')
    form_class=ProcesamientosUpdateForm
    success_url= reverse_lazy('procesamientos_app:list_procesamientos')
    
class ProcesamientosDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar los Procesamientos'''
    model = Procesamientos
    template_name = "procesamientos/delete_procesamientos.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('procesamientos_app:list_procesamientos')

# Create your views here.
