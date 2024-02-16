from django.urls import path
from . import views

app_name='proveedores_app'

urlpatterns = [
    path('list_proveedores/',views.ProveedoresListView.as_view(),name='list_proveedores'),
    path('add_proveedor/',views.ProveedoresCreateView.as_view(),name='add_proveedores'),

]