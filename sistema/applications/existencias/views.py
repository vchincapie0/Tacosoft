from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView
from django.urls import reverse_lazy
from applications.materiaprima.models import MateriaPrimaGenerica
from .models import ExistenciaMp

# Create your views here.

class ExistenciasTemplateView(LoginRequiredMixin,TemplateView):
    template_name = "existencias/stock.html"
    login_url=reverse_lazy('users_app:login')

    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        # Obtener todas las materias primas genéricas y su stock
        materias_genericas = MateriaPrimaGenerica.objects.all()
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

        context['stock_materias'] = stock_materias
        return context