from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.urls import reverse_lazy
from applications.materiaprima.models import MateriaPrimaGenerica
from applications.insumos.models import InsumosGenerico

# Create your views here.

class ExistenciasMateriaPrimaListView(LoginRequiredMixin, ListView):
    model=MateriaPrimaGenerica
    template_name = "existencias/stock_mp.html"
    login_url = reverse_lazy('users_app:login')
    paginate_by= 10
    context_object_name= "stock_mp"

    # def get_queryset(self):
    #     '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
    #     palabra_clave= self.request.GET.get("kword",'')
    #     lista = MateriaPrimaGenerica.objects.filter(
    #         mp_lote__mp_nombre__mp_nombre__icontains = palabra_clave
    #     )
    #     return lista

    
class ExistenciasImplementosTrabajoListView(LoginRequiredMixin, ListView):
    model=InsumosGenerico
    template_name = "existencias/stock_it.html"
    login_url = reverse_lazy('users_app:login')
    paginate_by= 10
    context_object_name = "stock_it"