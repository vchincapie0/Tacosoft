from django.urls import path
from . import views 

app_name='existencias_app'

urlpatterns = [
    path('existencias/',views.ExistenciasListView.as_view(),name='stock'),

]