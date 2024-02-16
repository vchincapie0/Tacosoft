from django.urls import path
from . import views

app_name='mp_app'

urlpatterns = [
    path('list_proveedores/',views.ProveedoresListView.as_view(),name='list_proveedores')
]