from django.shortcuts import render
from django.utils import timezone
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import (
    ListView, 
    CreateView, 
    UpdateView, 
    DeleteView,
    )
from django.urls import reverse_lazy

#Importacion de modelos y formulariosg
from .models import Facturas,IVA

#Importacion de modelos y formularios
from .models import Facturas, FacturasAudit

#from .forms import 
from .forms import (
    FacturaCreateForm, 
    FacturaUpdateForm, 
    IVACreateForm, 
    IVAUpdateForm,
    FacturasAuditFilterForm
)

# Create your views here.
class IVAListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = IVA
    template_name = "facturas/list_IVA.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'facturas'

class IVACreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva factura'''
    model = IVA
    template_name = "facturas/add_IVA.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = IVACreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('facturas_app:list_IVA') 

class IVAUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de Facturas'''
    model =IVA 
    template_name = "facturas/update_IVA.html"
    login_url=reverse_lazy('users_app:login')
    form_class=IVAUpdateForm
    success_url= reverse_lazy('facturas_app:list_IVA')

class IVADeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = IVA
    template_name = "facturas/delete_IVA.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('facturas_app:list_IVA') 


class FacturasListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de las Facturas'''
    model = Facturas
    template_name = "facturas/list_factura.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'facturas'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = Facturas.objects.filter(
            num_factura__icontains = palabra_clave,
            deleted=False  # Solo usuarios activos
        )
        return lista
    
class FacturasCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva factura'''
    model = Facturas
    template_name = "facturas/add_fact.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = FacturaCreateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('facturas_app:list_factura')  

class FacturasUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de Facturas'''
    model =Facturas 
    template_name = "facturas/edit_factura.html"
    login_url=reverse_lazy('users_app:login')
    form_class=FacturaUpdateForm
    success_url= reverse_lazy('facturas_app:list_factura')

class FacturasDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar facturas'''
    model = Facturas
    template_name = "facturas/delete_fact.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('facturas_app:list_factura')

class FacturasAuditListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de logs de Facturas'''
    model = FacturasAudit
    template_name = "administrador/auditorias/factura_audit.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'facturas'

    def get_queryset(self):
        ''''Filtro de la vista'''
        queryset = super().get_queryset()

        # Obtener los parámetros de filtrado del formulario
        form = FacturasAuditFilterForm(self.request.GET)

        # Aplicar filtros si el formulario es válido
        if form.is_valid():
            factura = form.cleaned_data.get('factura')
            action = form.cleaned_data.get('action')
            changed_by = form.cleaned_data.get('changed_by')
            start_date = form.cleaned_data.get('start_date')
            end_date = form.cleaned_data.get('end_date')
            pedido=form.cleaned_data.get('pedido')
            proveedor=form.cleaned_data.get('proveedor')

            # Filtrar por usuario, acción, usuario que realizó el cambio y rango de fechas
            if factura:
                queryset = queryset.filter(factura=factura)
            if pedido:
                queryset = queryset.filter(pedido=pedido)
            if proveedor:
                queryset = queryset.filter(proveedor=proveedor)
            if action:
                queryset = queryset.filter(action=action)
            if changed_by:
                queryset = queryset.filter(changed_by=changed_by)
            if start_date:
                queryset = queryset.filter(changed_at__gte=start_date)
            if end_date:
                # Agregar 1 día a la fecha final para incluir todos los registros de ese día
                end_date += timezone.timedelta(days=1)
                queryset = queryset.filter(changed_at__lt=end_date)

        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['filter_form'] = FacturasAuditFilterForm(self.request.GET)
        return context