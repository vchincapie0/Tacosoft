from django.db import models
from applications.procesamiento.models import Coccion, Picado

# Create your models here.

class ProductoTerminado(models.Model):

    PT_lote=models.AutoField('id',primary_key=True)
    proces_nombreProd=models.CharField('Nombre', max_length=50)
    proces_pesoMpCruda=models.FloatField('Peso Crudo')
    proces_pesoPostProceso=models.FloatField('Peso Post Proceso')
    proces_merma=models.FloatField('Peso Merma')
    proces_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)

    proces_materiaprima=models.ManyToManyField(MateriaPrima, blank=True)
    

    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_nombreProd}-{self.proces_materiaprima}"


# Create your models here.
