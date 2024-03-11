from django.db import models
from applications.procesamiento.models import Coccion, Picado

# Creacion model Producto terminado.

class ProductoTerminado(models.Model):

    PT_lote=models.AutoField('id',primary_key=True)
    ID=models.ForeignKey(Coccion,on_delete=models.CASCADE)
    ID=models.ForeignKey(Picado,on_delete=models.CASCADE)
    PT_prodNombre=models.CharField('Nombre Producto Terminado', max_length=50)
    PT_fechapreparacion=models.DateField('Fecha Preparacion')
    PT_fechavencimiento=models.DateField('Fecha Vencimiento')



    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_nombreProd}-{self.proces_materiaprima}"


# Create your models here.
