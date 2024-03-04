from django.urls import path
from . import views

app_name='facturas_app'

urlpatterns = [
    path('list_facturas/', views.FacturasListView.as_view(), name='list_factura')
]