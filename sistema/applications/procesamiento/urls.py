from django.urls import path
from . import views

app_name='procesamientos_app'

urlpatterns = [
    path('list_procesamientos/',views.ProcesamientosListView.as_view(),name='list_procesamientos'),
    path('picado/',views.ProcesamientosListView.as_view(),name='picado'),
]