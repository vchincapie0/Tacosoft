from django.urls import path
from . import views

app_name='procesamientos_app'

urlpatterns = [
    path('procesamientos/',views.ProcesamientosView.as_view(),name='procesamientos'),
    path('picado/',views.PicadoListView.as_view(),name='picado'),
    path('add_picado/',views.PicadocreateView.as_view(),name='add_picado'),
    path('delete_picado/<pk>',views.PicadoDeleteView.as_view(),name='delete_picado'),
    path('edit_picado/<pk>',views.PicadoUpdateView.as_view(),name='edit_picado'),
    path('coccion/',views.CoccionListView.as_view(),name='coccion'),
    path('add_coccion/',views.CoccioncreateView.as_view(),name='add_coccion'),
    path('delete_coccion/<pk>',views.CoccionDeleteView.as_view(),name='delete_coccion'),
    path('edit_coccion/<pk>',views.CoccionUpdateView.as_view(),name='edit_coccion'),
    path('equipos/',views.EquiposListView.as_view(),name='equipos'),
    path('add_equipos/',views.EquiposcreateView.as_view(),name='add_equipos'),
    path('delete_equipo/<pk>',views.EquiposDeleteView.as_view(),name='delete_equipo'),
    path('edit_equipo/<pk>',views.EquiposUpdateView.as_view(),name='edit_equipo'),
    path('selec_coccion/',views.CoccionSelectView.as_view(),name='selec_coccion'),
    path('selec_picado/',views.CoccionSelectView.as_view(),name='selec_picado'),
]