from django.urls import path
from . import views

app_name='produ_app'

urlpatterns = [
    path('list_produ/',views.ProduListView.as_view(),name='list_produ'),
    path('add_produ/',views.ProduCreateView.as_view(),name='add_produ'),
    path('update_produ/<pk>',views.ProduUpdateView.as_view(),name='update_produ'),
    path('delete_produ/<pk>',views.ProduDeleteView.as_view(),name='delete_produ'),
    path('existenciaPT/<pk>' ,views.ExistenciaPTView.as_view(),name='exitenciaPT'),
    path('PT_caracteristicas/',views.CaracteristicasProductoTerminadoCreateView.as_view(),name='caracteristicas_PT'),


]