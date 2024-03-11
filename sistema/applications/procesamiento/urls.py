from django.urls import path
from . import views

app_name='procesamientos_app'

urlpatterns = [
    path('list_procesamientos/',views.ProcesamientosListView.as_view(),name='list_procesamientos'),
    path('add_procesamientos/',views.ProcesamientosCreateView.as_view(),name='add_procesamientos'),
    path('update_procesamientos/<pk>',views.ProcesamientosUpdateView.as_view(),name='update_procesamientos'),
    path('delete_procesamientos/<pk>',views.ProcesamientosDeleteView.as_view(),name='delete_procesamientos'),
]