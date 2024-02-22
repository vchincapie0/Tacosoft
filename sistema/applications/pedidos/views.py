from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import Pedidos
from .forms import PedidosCreateForm, PedidosUpdateForm

# Create your views here.

class PedidosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Pedidos'''
    model = Pedidos
    template_name = "pedidos/list_pedidos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=5
    context_object_name = 'pedidos'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Pedidos.objects.filter(
            ref_pedido__icontains = palabra_clave
        )
        return lista

class PedidosCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea un nuevo pedido recibido'''
    model = Pedidos
    template_name = "pedidos/add_pedidos.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = PedidosCreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('pedidos_app:add_insumos') 