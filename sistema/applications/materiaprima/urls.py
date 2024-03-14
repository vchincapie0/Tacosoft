from django.urls import path
from . import views

app_name='mp_app'

urlpatterns = [
    path('mp_all/',views.MateriaPrimaListView.as_view(),name='lista_mp'),
    path('mp_add/',views.MateriaPrimaCreateView.as_view(),name='add_mp'),
    path('mp_caracteristicas/',views.CaracteristicasMateriaPrimaCreateView.as_view(),name='caracteristicas_mp'),
    path('mp_update_caracteristicas/<pk>',views.CaracteristicasMateriaPrimaUpdateView.as_view(),name='updateCaracteristicas_mp'),
    path('mp_desinfeccion/<pk>',views.DesinfeccionMateriaPrimaCreateView.as_view(),name='desinfeccion_mp'),
    path('mp_detail/<pk>',views.MateriaPrimaDetailView.as_view(),name='detail_mp'),
    path('existenciamp/<pk>' ,views.ExistenciampView.as_view(),name='exitencia_mp'),

    

    
]