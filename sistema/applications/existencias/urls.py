from django.urls import path
from . import views 

app_name='existencias_app'

urlpatterns = [
    path('existencias_mp/',views.ExistenciasMateriaPrimaListView.as_view(),name='stock_mp'),
    path('existencias_it/',views.ExistenciasImplementosTrabajoListView.as_view(),name='stock_it'),
]