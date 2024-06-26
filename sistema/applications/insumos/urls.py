from django.urls import path
from applications.users.decorators import admin_required
from . import views

app_name='insumos_app'

urlpatterns = [
    path('list_insumos_generico/',admin_required(views.InsumosGenericoListView.as_view()),name='list_insumos_generico'),
    path('add_insumos_generico/',admin_required(views.InsumosGenericoCreateView.as_view()),name='add_insumos_generico'),
    path('update_insumos_generico/<pk>',admin_required(views.InsumosGenericoUpdateView.as_view()),name='update_insumos_generico'),
    path('delete_insumos_generico/<pk>',admin_required(views.InsumosGenericoDeleteView.as_view()),name='delete_insumos_generico'),
    path('list_insumos/',views.InsumosListView.as_view(),name='list_insumos'),
    path('update_insumos/<pk>',views.ImplementosUpdateView.as_view(),name='update_insumos'),
    path('delete_insumos/<pk>',admin_required(views.ImplementosDeleteView.as_view()),name='delete_insumos'),
    path('implementos_audit/',admin_required(views.ImplementosAuditListView.as_view()),name='implementos_audit'),
    path('implementos/export/xls',admin_required(views.export_implementos_to_excel), name='export_implementos_excel'),
    path('implementos/export/cvs',admin_required(views.export_implementos_to_csv), name='export_implementos_cvs'),
]