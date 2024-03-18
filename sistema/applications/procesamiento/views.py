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

# Create your views here.
