from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import (
    TemplateView, 
    ListView, 
    CreateView, 
    UpdateView, 
    DeleteView)
from django.urls import reverse_lazy

#Importacion de modelos y formularios
from .models import Pedidos, PedidosAudit
from applications.materiaprima.models import MateriaPrima
from applications.insumos.models import ImplementosTrabajo
from applications.proveedores.models import Proveedores

from .forms import (
    PedidosCreateForm, 
    PedidosUpdateForm, 
    PedidosAddMpCreateFrom, 
    PedidosAddInsumosCreateFrom,
    PedidosAddProveedorCreateFrom,
    PedidosUpdateMpUpdateFrom,
)

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
            ref_pedido__icontains = palabra_clave,
            deleted=False  # Solo mostrará pedidos activos
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
    success_url= reverse_lazy('pedidos_app:list_pedidos')

    def form_valid(self, form):
        '''funcion para automatizar el campo pedi_user'''
        user = self.request.user
            # Guarda el formulario sin commit para asignar manualmente el usuario
        pedido = form.save(commit=False)
            # Asigna el usuario al campo pedi_user
        pedido.pedi_user = user
            # Ahora sí, guarda el pedido en la base de datos
        pedido.save()
        return super().form_valid(form)

class PedidosAddMpCreateView(LoginRequiredMixin,CreateView):
    '''Clase para crear una materia prima nueva dentro del formulario de agregar pedidos'''
    model = MateriaPrima
    template_name = "pedidos/add_mp_pedidos.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = PedidosAddMpCreateFrom
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('pedidos_app:add_pedidos') 


class PedidosAddInsumosCreateView(LoginRequiredMixin,CreateView):
    '''Clase para crear un implemento de trabajo nuevo dentro del formulario de agregar pedidos'''
    model = ImplementosTrabajo
    template_name = "pedidos/add_it_pedidos.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = PedidosAddInsumosCreateFrom
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('pedidos_app:add_pedidos')

class PedidosAddProveedoresCreateView(LoginRequiredMixin,CreateView):

    '''Clase para crear un proveedor nuevo dentro del formulario de agregar pedidos'''
    model = Proveedores
    template_name = "pedidos/add_prov_pedidos.html"
    login_url=reverse_lazy('home_app:home')
    #Campos que se van a mostrar en el formulario
    form_class = PedidosAddProveedorCreateFrom
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('pedidos_app:add_pedidos') 

class PedidosUpdateView(LoginRequiredMixin, UpdateView):

    '''Vista para actualizar los datos de proveedores'''
    model = Pedidos
    template_name = "pedidos/edit_pedidos.html"
    login_url=reverse_lazy('users_app:login')
    form_class=PedidosUpdateForm
    success_url= reverse_lazy('pedidos_app:list_pedidos')

class PedidosDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Pedidos'''
    model = Pedidos
    template_name = "pedidos/delete_pedidos.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('pedidos_app:list_pedidos')

class PedidosAuditListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de la Auditoria de Pedidos'''
    model = PedidosAudit
    template_name = "pedidos/pedidosaudit.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'pedidos'