from django.urls import path
from . import views

app_name='facturas_app'

urlpatterns = [
    path('list_facturas/', views.FacturasListView.as_view(), name='list_factura'),
    path('add_facturas/', views.FacturasCreateView.as_view(), name='add_factura'),
    path('edit_facturas/<pk>', views.FacturasUpdateView.as_view(), name='edit_factura'),
    path('delete_facturas/<pk>', views.FacturasDeleteView.as_view(), name='delete_factura'),



]