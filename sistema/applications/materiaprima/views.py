from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView,CreateView,DetailView, UpdateView, TemplateView, DeleteView
from django.utils import timezone
from django.urls import reverse_lazy
from django.shortcuts import render

#Importacion modelos y formularios
from applications.pedidos.models import Pedidos
from .models import (
    MateriaPrima,Desinfeccion,
    CaracteristicasOrganolepticas,
    MateriaPrimaGenerica,
    DesinfectanteGenerico,
    MateriaPrimaAudit
    )
from .forms import (
    MateriaPrimaForm,
    CaracteristicasMPForm,
    CaracteristicasMPUpdateForm,
    DesinfeccionMPForm,
    DesinfeccionMPUpdateForm,
    MateriaPrimaGenericaForm,
    MateriaPrimaGenericaUpdateForm,
    MateriaPrimaGenericaFilterForm,
    DesinfectanteGenericoForm,
    MateriaAuditFilterForm
)


# Create your views here.
class MateriaPrimaGenericaListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de las materias primas'''
    model = MateriaPrimaGenerica
    template_name = "administrador/genericas/lista_mp_generica.html"
    login_url = reverse_lazy('users_app:login')
    paginate_by = 10
    context_object_name = 'materiaprima'

    def get_queryset(self):
        queryset = super().get_queryset()

        # Obtener los parámetros de filtrado del formulario
        form = MateriaPrimaGenericaFilterForm(self.request.GET)

        # Aplicar filtros si el formulario es válido
        if form.is_valid():
            mp_nombre = form.cleaned_data.get('mp_nombre')
            mp_tipo = form.cleaned_data.get('mp_tipo')

            # Filtrar por nombre de materia prima
            if mp_nombre:
                queryset = queryset.filter(mp_nombre__icontains=mp_nombre)
            # Filtrar por tipo solo si se seleccionó uno
            if mp_tipo:
                queryset = queryset.filter(mp_tipo=mp_tipo)
            
        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['filter_form'] = MateriaPrimaGenericaFilterForm(self.request.GET)
        return context



class MateriaPrimaGenericaCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = MateriaPrimaGenerica
    template_name = "administrador/genericas/add_mp_generica.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = MateriaPrimaGenericaForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:listaGenerica_mp')

class MateriaPrimaGenericaUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de materia prima generica'''
    model = MateriaPrimaGenerica
    template_name = "administrador/genericas/update_mp_generica.html"
    login_url=reverse_lazy('users_app:login')
    form_class=MateriaPrimaGenericaUpdateForm
    success_url= reverse_lazy('mp_app:listaGenerica_mp')

class MateriaPrimaGenericaDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = MateriaPrimaGenerica
    template_name = "administrador/genericas/delete_mp_generica.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('mp_app:listaGenerica_mp')

class MateriaPrimaListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de las materias primas'''
    model = MateriaPrima
    template_name = "materiaprima/lista_mp.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'materiaprima'

    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')

        # Obtiene todas las materias primas
        queryset = MateriaPrima.objects.all()

        # Filtra pedidos rechazados
        pedidos_rechazados_ids = Pedidos.objects.filter(pedi_estado='2').values_list('id', flat=True)

        # Filtra las materias primas excluyendo aquellas asociadas a pedidos rechazados
        queryset = queryset.exclude(pedidos__id__in=pedidos_rechazados_ids)

        # Filtra por nombre específico de la materia prima si se proporciona una palabra clave
        if palabra_clave:
            queryset = queryset.filter(mp_nombre__icontains=palabra_clave)

        return queryset

class MateriaPrimaCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = MateriaPrima
    template_name = "materiaprima/add_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = MateriaPrimaForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp') 

class MateriaPrimaUpdateView(LoginRequiredMixin, UpdateView):
    '''Clase donde se modifica la materia prima registrada'''
    model = MateriaPrima
    template_name = "materiaprima/mp_update.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = MateriaPrimaForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp') 

class CaracteristicasMateriaPrimaCreateView(LoginRequiredMixin, CreateView):
    '''Vista para la creacion de las caracteristicas organolepticas de la materia prima'''
    model = CaracteristicasOrganolepticas
    template_name = "materiaprima/caracteristicas_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = CaracteristicasMPForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp')
    
class CaracteristicasMateriaPrimaUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para la edicion de las caracteristicas organolepticas de la materia prima'''
    model = CaracteristicasOrganolepticas
    template_name = "materiaprima/updateCaracteristicas_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = CaracteristicasMPUpdateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp')
    
class DesinfectanteGenericoListView(LoginRequiredMixin, ListView):
    '''Clase para mostrar los datos de los Implementos de trabajo'''
    model = DesinfectanteGenerico
    template_name = "administrador/genericas/list_desinfectante_generico.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=10
    context_object_name = 'desinfectante'

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = DesinfectanteGenerico.objects.filter(
           des_nombre__icontains = palabra_clave
        )
        return lista
    
class DesinfectanteGenericoCreateView(LoginRequiredMixin, CreateView):
    '''Clase donde se crea una nueva materia prima'''
    model = DesinfectanteGenerico
    template_name = "administrador/genericas/add_desinfectante_generico.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = DesinfectanteGenericoForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:desinfeccion_generico')

class DesinfectanteGenericoUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de materia prima generica'''
    model = DesinfectanteGenerico
    template_name = "administrador/genericas/update_desinfectante_generico.html"
    login_url=reverse_lazy('users_app:login')
    form_class=DesinfectanteGenericoForm
    success_url= reverse_lazy('mp_app:desinfeccion_generico')

class DesinfectanteGenericoDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar Implenentos de Trabajo'''
    model = DesinfectanteGenerico
    template_name = "administrador/genericas/delete_desinfectante_generico.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('mp_app:desinfeccion_generico')

class DesinfeccionMateriaPrimaCreateView(LoginRequiredMixin, CreateView):
    '''Vists para la creacion de la desinfeccion de la materia prima'''
    model = Desinfeccion
    template_name = "materiaprima/desinfeccion_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = DesinfeccionMPForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp')
    
    def form_valid(self, form):
        '''funcion para automatizar el campo '''
        user = self.request.user
             # Guarda el formulario sin commit para asignar manualmente el usuario
        desinfeccion = form.save(commit=False)
             # Asigna el usuario al campo pedi_user
        desinfeccion.responsable = user
             # Ahora sí, guarda el pedido en la base de datos
        desinfeccion.save()
        return super().form_valid(form)

class DesinfeccionMateriaPrimaUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para la edición de la desinfeccion de la materia prima'''
    model = Desinfeccion
    template_name = "materiaprima/updateDesinfeccion_mp.html"
    login_url=reverse_lazy('users_app:login')
    #Campos que se van a mostrar en el formulario
    form_class = DesinfeccionMPUpdateForm
    #url donde se redirecciona una vez acaba el proceso el "." es para redireccionar a la misma pagina
    success_url= reverse_lazy('mp_app:lista_mp')
    
class MateriaPrimaDetailView(LoginRequiredMixin, DetailView):
    '''Vista donde se muestran los detalles de la materia prima'''
    model = MateriaPrima
    template_name = "materiaprima/detail_mp.html"
    login_url=reverse_lazy('users_app:login')
    context_object_name = 'materiaprima'

class MateriaAuditListView(LoginRequiredMixin, ListView):
    model= MateriaPrimaAudit
    template_name='administrador/auditorias/materiaaudit.html'
    paginate_by=10
    context_object_name='auditoria'

    def get_queryset(self):
        queryset = super().get_queryset()

        # Obtener los parámetros de filtrado del formulario
        form = MateriaAuditFilterForm(self.request.GET)

        # Aplicar filtros si el formulario es válido
        if form.is_valid():
            materiaprima = form.cleaned_data.get('materiaprima')
            action = form.cleaned_data.get('action')
            changed_by = form.cleaned_data.get('changed_by')
            start_date = form.cleaned_data.get('start_date')
            end_date = form.cleaned_data.get('end_date')

            # Filtrar por usuario, acción, usuario que realizó el cambio y rango de fechas
            if materiaprima:
                queryset = queryset.filter(materiaprima=materiaprima)
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
        context['filter_form'] = MateriaAuditFilterForm(self.request.GET)
        return context


