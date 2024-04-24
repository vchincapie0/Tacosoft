from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView,CreateView,DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Procesamiento,Picado
from .forms import  addPicado

# Create your views here.

class ProcesamientosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de Procesamiento'''
    model = Procesamiento
    template_name = "Procesamientos/list_procesamientos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'

class PicadoListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de picado'''
    model = Picado
    template_name = "Procesamientos/picado.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'
# Create your views here.
    
class PicadocreateView(LoginRequiredMixin,CreateView):
    '''Vista para actualizar los datos de picado'''
    model = Picado
    template_name = "procesamientos/add_picado.html"
    login_url=reverse_lazy('home_app:home')
    form_class=addPicado
    success_url= reverse_lazy('procesamientos_app:picado')

class PicadoDeleteView(LoginRequiredMixin,DeleteView):
    '''Vista para borrar picados'''
    model = Picado
    template_name = "procesamiento/delete_picado.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('procesamientos_app:picado')