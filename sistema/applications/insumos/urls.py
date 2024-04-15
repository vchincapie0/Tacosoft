from django.urls import path
from . import views

app_name='insumos_app'

urlpatterns = [
    path('list_insumos_generico/',views.InsumosGenericoListView.as_view(),name='list_insumos_generico'),
    path('list_insumos/',views.InsumosListView.as_view(),name='list_insumos'),
    path('add_insumos/',views.ImplementosCreateView.as_view(),name='add_insumos'),
    path('update_insumos/<pk>',views.ImplementosUpdateView.as_view(),name='update_insumos'),
    path('delete_insumos/<pk>',views.ImplementosDeleteView.as_view(),name='delete_insumos'),
]