from django.db import models
from applications.materiaprima.models import MateriaPrima


# Create your models here.

class Procesamiento(models.Model):

    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.AutoField('id',primary_key=True)
    proces_pesoMpCruda=models.FloatField('Peso Crudo')
    proces_pesoPostProceso=models.FloatField('Peso Post Proceso')
    proces_merma=models.FloatField('Peso Merma')
    proces_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)
    proces_materiaprima=models.ManyToManyField(MateriaPrima)
    

    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_materiaprima}-{self.proces_pesoMpCruda}-{self.proces_pesoPostProceso}"


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
        return f"{self.cod_procesamiento}-{self.equi_encargadoCocina}-{self.equi_encargadoEntrega}-{self.equi_nombre}"

class Coccion(models.Model):

    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.ForeignKey(Procesamiento,on_delete=models.CASCADE)
    cocc_tiempoCoccion=models.IntegerField(default=100)
    cocc_temperaturafinal=models.FloatField('temperatura final')
    cocc_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)

    
    def __str__(self):
        return f"{self.cod_procesamiento}-{self.cocc_tiempoCoccion}-{self.cocc_temperaturafinal}"

class Picado(models.Model):

    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.ForeignKey(Procesamiento,on_delete=models.CASCADE)
    pica_cantidad=models.IntegerField(default=100)
    pica_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES)

    
    def __str__(self):
        return f"{self.cod_procesamiento}-{self.pica_cantidad}"
