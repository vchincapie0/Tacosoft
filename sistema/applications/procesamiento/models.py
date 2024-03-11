from django.db import models
from applications.materiaprima.models import MateriaPrima


# Create your models here.

class Procesamiento(models.Model):

    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.AutoField('id',primary_key=True)
    proces_nombreProd=models.CharField('Nombre', max_length=50)
    proces_pesoMpCruda=models.FloatField('Peso Crudo')
    proces_pesoPostProceso=models.FloatField('Peso Post Proceso')
    proces_merma=models.FloatField('Peso Merma')
    proces_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)

    proces_materiaprima=models.ManyToManyField(MateriaPrima, blank=True)
    

    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_nombreProd}-{self.proces_materiaprima}"


class Equipos(models.Model):

    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.ForeignKey(Procesamiento,on_delete=models.CASCADE)
    equi_encargadoCocina=models.CharField('Nombre', max_length=50)
    equi_encargadoEntrega=models.CharField('Nombre', max_length=50)
    equi_calidad=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)
    equi_nombre=models.CharField('Nombre', max_length=50)
    equi_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)

    
    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_nombreProd}-{self.proces_materiaprima}"
