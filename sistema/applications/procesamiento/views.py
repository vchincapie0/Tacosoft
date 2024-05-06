from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView,CreateView,DeleteView,UpdateView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Procesamiento,Picado,Coccion,Equipos
from .forms import  addPicado,addCoccion,addEquipos,PicadoUpdateForm

# Create your views here.

class ProcesamientosView(LoginRequiredMixin, TemplateView):
    '''Clase para mostrar los datos de Procesamiento'''
    template_name = "Procesamientos/procesamiento_view.html"
    login_url=reverse_lazy('users_app:login')


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
    template_name = "procesamientos/delete_picado.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('procesamientos_app:picado')

class CoccionListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de picado'''
    model = Coccion
    template_name = "Procesamientos/coccion.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'

class CoccioncreateView(LoginRequiredMixin,CreateView):
    '''Vista para crear procesos de coccion'''
    model = Coccion
    template_name = "procesamientos/add_coccion.html"
    login_url=reverse_lazy('home_app:home')
    form_class=addCoccion
    success_url= reverse_lazy('procesamientos_app:coccion')

class CoccionDeleteView(LoginRequiredMixin,DeleteView):
    '''Vista para borrar coccion'''
    model = Coccion
    template_name = "procesamientos/delete_coccion.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('procesamientos_app:coccion')

class EquiposListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de equipos'''
    model = Equipos
    template_name = "Procesamientos/equipos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'

class PicadoUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de Picado'''
    model = Picado
    template_name = "procesamientos/update_picado.html"
    login_url=reverse_lazy('users_app:login')
    form_class=PicadoUpdateForm
    success_url= reverse_lazy('procesamientos_app:picado')

class EquiposcreateView(LoginRequiredMixin,CreateView):
    '''Vista para crear  de equipos'''
    model = Equipos
    template_name = "procesamientos/add_equipo.html"
    login_url=reverse_lazy('home_app:home')
    form_class=addEquipos
    success_url= reverse_lazy('procesamientos_app:equipos')

class EquiposDeleteView(LoginRequiredMixin,DeleteView):
    '''Vista para borrar equipos'''
    model = Equipos
    template_name = "procesamientos/delete_equipo.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('procesamientos_app:equipos')