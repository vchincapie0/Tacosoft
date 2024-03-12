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
        return f"{self.PT_lote}-{self.PT_prodNombre}-{self.PT_fechapreparacion}-{self.PT_fechavencimiento}"


# Creación model ExistenciaPT.

class ExistenciaPT(models.Model):

    PT_lote=models.ForeignKey(ProductoTerminado,on_delete=models.CASCADE)
    ExisPT_CantidadIngresada = models.IntegerField('Cantidad Ingresada')
    ExisPT_CantidadEgresada = models.IntegerField('Cantidad Egresada')


    def __str__(self):
        return f"{self.PT_lote}-{self.ExisPT_CantidadIngresada}-{self.ExisPT_CantidadEgresada}"

# Creación model caracteristicas organolepticas PT.
    
class CaracteristicasOrganolepticasPT(models.Model):

    ESTADO_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),
    )

    PT_lote=models.ForeignKey(ProductoTerminado,on_delete=models.CASCADE)
    observaciones = models.CharField('Observaciones', max_length=50)
    olor = models.BooleanField('Olor',default=False)
    sabor = models.BooleanField('Sabor',default=False)
    textura = models.BooleanField('Textura',default=False)
    color = models.BooleanField('Color',default=False)
    estado=models.CharField('Estado',max_length=1,choices=ESTADO_CHOICES)
    
    def __str__(self):
        return str(self.PT_lote)+'-'+self.estado