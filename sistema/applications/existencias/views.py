from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView
from django.urls import reverse_lazy
from applications.materiaprima.models import MateriaPrima, MateriaPrimaGenerica
from .models import ExistenciaMp

class ExistenciasListView(LoginRequiredMixin, ListView):
    model = ExistenciaMp
    template_name = "existencias/stock_mp.html"
    login_url = reverse_lazy('users_app:login')
    paginate_by = 5

    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')
        queryset = ExistenciaMp.objects.filter(mp_lote__mp_nombre__mp_nombre__icontains=palabra_clave)
        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        tipo_materia_prima = self.request.GET.get('tipo', None)
        
        if tipo_materia_prima:
            if tipo_materia_prima == 'Todos':
                materias_genericas = MateriaPrimaGenerica.objects.all()
            else:
                materias_genericas = MateriaPrimaGenerica.objects.filter(mp_tipo=tipo_materia_prima)
        else:
            materias_genericas = MateriaPrimaGenerica.objects.all()

        stock_materias = []
        for materia in materias_genericas:
for materia in materias_genericas:
            existencias = ExistenciaMp.objects.filter(mp_lote__mp_nombre__mp_nombre=materia.nombre)
            cantidad_total_ingresada = sum(existencia.cantidadIngresada for existencia in existencias)
            cantidad_total_egresada = sum(existencia.cantidadEgresada for existencia in existencias)
            stock_disponible = cantidad_total_ingresada - cantidad_total_egresada

            stock_materias.append({
                'materia_prima': materia,
                'stock_disponible': stock_disponible
            })

        context['stock_materias'] = stock_materias
        context['tipo_materia_prima'] = tipo_materia_prima
        return context
