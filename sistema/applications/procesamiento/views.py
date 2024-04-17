from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView,UpdateView
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
    
class PicadopdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de picado'''
    model = Picado
    template_name = "procesamiento/#"
    login_url=reverse_lazy('users_app:login')
    form_class=addPicado
    success_url= reverse_lazy('procesamientos_app:add_picado')