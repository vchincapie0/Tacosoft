from django.db import models

# Create your models here.

class Proveedores(models.Model):
    '''Clase para la creacion de tabla proveedores en bd'''
    prov_id=models.AutoField('id',primary_key=True)
    nit = models.IntegerField('NIT',unique=True)
    prov_nombre=models.CharField('Nombre',max_length=40)
    prov_telefono=models.CharField('Telefono',max_length=10)
    is_active = models.BooleanField(default=True)  # Campo para el borrado lógico

    def __str__(self):
        return f"{self.prov_nombre}"
    
    def delete(self, using=None, keep_parents=False):
        '''Funcion para borrado lógico'''
        self.is_active = False  # Marcar como inactivo en lugar de eliminar
        self.save(using=using)
