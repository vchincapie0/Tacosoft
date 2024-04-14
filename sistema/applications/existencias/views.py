from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import TemplateView, ListView
from django.urls import reverse_lazy

# Create your views here.

class ExistenciasTemplateView(LoginRequiredMixin,TemplateView):
    template_name = "existencias/stock.html"
    login_url=reverse_lazy('users_app:login')

