from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.urls import reverse_lazy
from applications.materiaprima.models import MateriaPrimaGenerica
from .models import ExistenciaMp

# Create your views here.

class ExistenciasListView(LoginRequiredMixin, ListView):
    model=ExistenciaMp
    template_name = "existencias/stock_mp.html"
    login_url = reverse_lazy('users_app:login')
    paginate_by= 5

    def get_queryset(self):
        '''Funcion que toma de la barra de busqueda la pablabra clave para filtrar'''
        palabra_clave= self.request.GET.get("kword",'')
        lista = ExistenciaMp.objects.filter(
            mp_lote__mp_nombre__mp_nombre__icontains = palabra_clave
        )
        return lista

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # Obtener el tipo de materia prima seleccionado del formulario (si está presente en la solicitud)
        tipo_materia_prima = self.request.GET.get('tipo', None)

         # Filtrar las materias primas genéricas según el tipo seleccionado
        if tipo_materia_prima:
            if tipo_materia_prima == 'Todos':
                materias_genericas = MateriaPrimaGenerica.objects.all()  # Mostrar todas las materias primas
            else:
                materias_genericas = MateriaPrimaGenerica.objects.filter(mp_tipo=tipo_materia_prima)
        else:
            materias_genericas = MateriaPrimaGenerica.objects.all()

        # Calcular el stock disponible para cada materia prima genérica filtrada
        stock_materias = []
        for materia in materias_genericas:
            existencias = ExistenciaMp.objects.filter(mp_lote__mp_nombre=materia)
            cantidad_total_ingresada = sum(existencia.cantidad_ingresada for existencia in existencias)
            cantidad_total_egresada = sum(existencia.cantidad_egresada for existencia in existencias)
            stock_disponible = cantidad_total_ingresada - cantidad_total_egresada

            stock_materias.append({
                'materia_prima': materia,
                'stock_disponible': stock_disponible
            })

        # Agregar los datos filtrados al contexto de la plantilla
        context['stock_materias'] = stock_materias
        context['tipo_materia_prima'] = tipo_materia_prima  # Pasar el tipo para mostrar en la plantilla
        return context