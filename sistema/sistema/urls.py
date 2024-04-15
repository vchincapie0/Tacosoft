
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('applications.materiaprima.urls')),
    path('', include('applications.users.urls')),
    path('', include('applications.home.urls')),
    path('', include('applications.insumos.urls')),
    path('', include('applications.proveedores.urls')),
    path('', include('applications.pedidos.urls')),
    path('', include('applications.facturas.urls')),
<<<<<<< HEAD
    path('', include('applications.productoterminado.urls')),
    path('', include('applications.procesamiento.urls')),






=======
    path('', include('applications.procesamiento.urls')),
    path('', include('applications.productoterminado.urls')),
    path('', include('applications.existencias.urls')),
>>>>>>> 66d77bd3f5a1294c1e034fa1a8f479d6c3f4a3a2


] +  static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 
