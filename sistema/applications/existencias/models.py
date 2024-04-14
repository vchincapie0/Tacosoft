from django.db import models
from applications.materiaprima.models import MateriaPrima 

class ExistenciaMp(models.Model):
    '''Tabla de existencias de materia prima'''
    codigo=models.PositiveIntegerField('Código', primary_key=True)
    mp_lote=models.ForeignKey(MateriaPrima,on_delete=models.CASCADE)
    cantidadIngresada=models.PositiveIntegerField('Cantidad Ingresada')
    cantidadEgresada=models.PositiveIntegerField('Cantidad Egresada')

    def __str__(self):
        return str(self.mp_lote)+'-'+self.exiMP_cantidadIngresada+self.exiMP_cantidadEgresada

    def ingresar_materia_prima(self, cantidad):
            '''Método para registrar la entrada de materia prima'''

            if cantidad > 0:
                self.cantidad_ingresada += cantidad
                self.save()
                return True
            return False

    def egresar_materia_prima(self, cantidad):
        '''Método para registrar la salida de materia prima'''

        if cantidad > 0 and cantidad <= self.cantidad_disponible():
            self.cantidad_egresada += cantidad
            self.save()
            return True
        return False

    def cantidad_disponible(self):
        '''Método para calcular la cantidad disponible de materia prima'''

        return self.cantidad_ingresada - self.cantidad_egresada