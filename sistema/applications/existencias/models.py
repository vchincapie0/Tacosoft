from django.db import models
from applications.materiaprima.models import MateriaPrima 
from applications.insumos.models import InsumosGenerico

class ExistenciaMateriaPrima(models.Model):
    '''Tabla de existencias de materia prima'''
    codigo=models.PositiveIntegerField('Código', primary_key=True)
    mp_lote=models.ForeignKey(MateriaPrima,on_delete=models.CASCADE)
    cantidadDisponible=models.PositiveIntegerField('Cantidad Ingresada')
    cantidadEgresada=models.PositiveIntegerField('Cantidad Egresada')

    def __str__(self):
        return f"{self.mp_lote} - {self.cantidadIngresada} - {self.cantidadEgresada}"
