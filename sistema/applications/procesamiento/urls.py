from django.urls import path
from . import views

app_name='procesamientos_app'

urlpatterns = [
    path('list_procesamientos/',views.ProcesamientosListView.as_view(),name='list_procesamientos'),
    path('picado/',views.PicadoListView.as_view(),name='picado'),
    path('add_picado/',views.PicadopdateView.as_view(),name='add_picado'),
]