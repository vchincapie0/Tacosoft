from django.shortcuts import render
from django.utils import timezone
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
#Importacion de modelos y formularios
from .models import (
    ImplementosTrabajo,
    InsumosGenerico,
    ImplementosAudit,
)
from .forms import (
    ImplementosTrabajoForm,
    ImplementosUpdateForm,
    InsumosGenericoForm,
    InsumosGenericoUpdateForm,
    ImplementosAuditFilterForm,
    InsumosGenericoFilterForm,
)

# Create your views here.

class InsumosGenericoListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Insumos Genericos'''
    model = InsumosGenerico
    template_name = "administrador/genericas/insumos/list_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'insumos'

    def get_queryset(self):
        queryset = super().get_queryset()
        
        # Obtener los parámetros de filtrado del formulario
        form = InsumosGenericoFilterForm(self.request.GET)

        # Aplicar filtros si el formulario es válido
        if form.is_valid():
            it_nombre = form.cleaned_data.get('it_nombre')

            # Filtrar por nombre de insumo genérico
            if it_nombre:
                queryset = queryset.filter(it_nombre__icontains=it_nombre)

        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['filter_form'] = InsumosGenericoFilterForm(self.request.GET)
        return context
    
class InsumosGenericoCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = InsumosGenerico
    template_name = "administrador/genericas/insumos/add_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class=InsumosGenericoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('insumos_app:list_insumos_generico')

class InsumosGenericoUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de user'''
    model = InsumosGenerico
    template_name = "administrador/genericas/insumos/update_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    form_class=InsumosGenericoUpdateForm
    success_url= reverse_lazy('insumos_app:list_insumos')

class InsumosGenericoDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = InsumosGenerico
    template_name = "administrador/genericas/insumos/delete_insumos_generico.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('insumos_app:list_insumos_generico')

class InsumosListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = ImplementosTrabajo
    template_name = "insumos/list_insumos.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'insumos'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = ImplementosTrabajo.objects.filter(
           it_nombre__it_nombre__icontains = palabra_clave
        )
        return lista
    
class ImplementosCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = ImplementosTrabajo
    template_name = "insumos/add_insumos.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = ImplementosTrabajoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('insumos_app:list_insumos')  

class ImplementosUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de user'''
    model = ImplementosTrabajo
    template_name = "insumos/update_insumos.html"
    login_url=reverse_lazy('users_app:login')
    form_class=ImplementosUpdateForm
    success_url= reverse_lazy('insumos_app:list_insumos')
    
class ImplementosDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = ImplementosTrabajo
    template_name = "insumos/delete_insumos.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('insumos_app:list_insumos')

class ImplementosAuditListView(LoginRequiredMixin, ListView):
    model= ImplementosAudit
    template_name='administrador/auditorias/implementosaudit.html'
    paginate_by=10
    context_object_name='auditoria'

    def get_queryset(self):
        queryset = super().get_queryset()

        # Obtener los parámetros de filtrado del formulario
        form = ImplementosAuditFilterForm(self.request.GET)

        # Aplicar filtros si el formulario es válido
        if form.is_valid():
            implementos = form.cleaned_data.get('implementos')
            action = form.cleaned_data.get('action')
            changed_by = form.cleaned_data.get('changed_by')
            start_date = form.cleaned_data.get('start_date')
            end_date = form.cleaned_data.get('end_date')

            # Filtrar por usuario, acción, usuario que realizó el cambio y rango de fechas
            if implementos:
                queryset = queryset.filter(implementos=implementos)
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
        context['filter_form'] = ImplementosAuditFilterForm(self.request.GET)
        return context
