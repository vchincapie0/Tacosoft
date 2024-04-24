from django.urls import path
from . import views

app_name='mp_app'

urlpatterns = [
    path('mpgeneric_list/',views.MateriaPrimaGenericaListView.as_view(),name='listaGenerica_mp'),
    path('add_mp_generica/',views.MateriaPrimaGenericaCreateView.as_view(),name='add_mp_generica'),
    path('update_mp_generica/<pk>',views.MateriaPrimaGenericaUpdateView.as_view(),name='update_mp_generica'),
    path('delete_mp_generica/<pk>',views.MateriaPrimaGenericaDeleteView.as_view(),name='delete_mp_generica'),
    path('mp_list/',views.MateriaPrimaListView.as_view(),name='lista_mp'),
    path('mp_add/',views.MateriaPrimaCreateView.as_view(),name='add_mp'),
    path('mp_caracteristicas/',views.CaracteristicasMateriaPrimaCreateView.as_view(),name='caracteristicas_mp'),
    path('mp_update_caracteristicas/<pk>',views.CaracteristicasMateriaPrimaUpdateView.as_view(),name='updateCaracteristicas_mp'),
    path('desinfeccion_generico/',views.DesinfectanteGenericoListView.as_view(),name='desinfeccion_generico'),
    path('add_desinfeccion_generico/',views.DesinfectanteGenericoCreateView.as_view(),name='add_desinfeccion_generico'),
    path('update_desinfeccion_generico/<pk>',views.DesinfectanteGenericoUpdateView.as_view(),name='update_desinfeccion_generico'),
    path('delete_desinfeccion_generico/<pk>',views.DesinfectanteGenericoDeleteView.as_view(),name='delete_desinfeccion_generico'),
    path('mp_desinfeccion/',views.DesinfeccionMateriaPrimaCreateView.as_view(),name='desinfeccion_mp'),
    path('mp_update_desinfeccion/<pk>',views.DesinfeccionMateriaPrimaUpdateView.as_view(),name='updateDesinfeccion_mp'),
    path('mp_detail/<pk>',views.MateriaPrimaDetailView.as_view(),name='detail_mp'),
  

]