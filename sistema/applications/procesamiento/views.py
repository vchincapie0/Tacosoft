from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Procesamiento
from .forms import ProcesamientoForm, ProcesamientoUpdateForm

# Create your views here.

class ProcesamientosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de Procesamiento'''
    model = Procesamiento
    template_name = "Procesamientos/list_procesamientos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'procesamientos'

# Create your views here.
