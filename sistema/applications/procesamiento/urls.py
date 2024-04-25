from django.urls import path
from . import views

app_name='procesamientos_app'

urlpatterns = [
    path('list_procesamientos/',views.ProcesamientosListView.as_view(),name='list_procesamientos'),
    path('picado/',views.PicadoListView.as_view(),name='picado'),
    path('add_picado/',views.PicadocreateView.as_view(),name='add_picado'),
    path('delete_picado/<pk>',views.PicadoDeleteView.as_view(),name='delete_picado'),
    path('coccion/',views.CoccionListView.as_view(),name='coccion'),
    path('add_coccion/',views.CoccioncreateView.as_view(),name='add_coccion'),
]