from django.urls import path
from applications.users.decorators import admin_required
from . import views

app_name='proveedores_app'

urlpatterns = [
    path('list_proveedores/',admin_required(views.ProveedoresListView.as_view()),name='list_proveedores'),
    path('proveedores/export/xls',views.export_proveedores_to_excel, name='export_proveedores_excel'),
    path('proveedores/export/cvs',views.export_proveedores_to_csv, name='export_proveedores_cvs'),
    path('add_proveedor/',views.ProveedoresCreateView.as_view(),name='add_proveedores'),
    path('edit_proveedor/<pk>',views.ProveedorUpdateView.as_view(),name='update_proveedores'),
    path('delete_proveedor/<pk>',views.ProveedoresDeleteView.as_view(),name='delete_proveedores'),
    path('proveedor_audit/',views.ProveedoresAuditListView.as_view(),name='proveedor_audit'),

]