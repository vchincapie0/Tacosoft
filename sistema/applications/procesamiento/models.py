from django.db import models
from applications.materiaprima.models import MateriaPrima


# Create your models here.

class Procesamiento(models.Model):
    CHECK_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )


    cod_procesamiento=models.AutoField('id',primary_key=True)
    proces_pesoMP=models.FloatField('Peso ', default=0.0)
    proces_pesoPostProceso=models.FloatField('Peso Post Proceso')
    proces_merma=models.FloatField('Peso Merma')
    proces_estado=models.CharField('estado',max_length=1, choices=CHECK_CHOICES,default="0")
    proces_materiaprima=models.ManyToManyField(MateriaPrima)
    

    def __str__(self):
        return f"{self.cod_procesamiento}-{self.proces_materiaprima}--{self.proces_pesoPostProceso}"


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
    equi_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES, default="0")

    
    def __str__(self):
        return f"{self.cod_procesamiento}-{self.equi_encargadoCocina}-{self.equi_encargadoEntrega}-{self.equi_nombre}"

class Coccion(models.Model):

    CHECK_CHOICES=(
        ('0','Aceptado'),
        ('1','Rechazado'),

    )

    cod_procesamiento=models.AutoField(primary_key=True)
    cocc_cantidad = models.IntegerField('Cantidad')
    cocc_pesoMPposproceso=models.FloatField('Peso')
    cocc_merma=models.FloatField('Peso Merma',default=0)
    cocc_tiempoCoccion=models.TimeField(default=100)
    cocc_temperaturafinal=models.FloatField('temperatura final')
    cocc_check=models.CharField('estado',max_length=1, choices=CHECK_CHOICES,default="0")

    
    def __str__(self):
        return f"{self.cod_procesamiento}-{self.cocc_cantidad}-{self.cocc_pesoMPposproceso}-{self.cocc_merma}-{self.cocc_tiempoCoccion}-{self.cocc_temperaturafinal}-{self.cocc_check}"

class Picado(models.Model):

    ESTADO_CHOICES=(
        ('0','Aprobado'),
        ('1','No Aprobado'),

    )

    cod_procesamiento=models.AutoField(primary_key=True)
    pica_nombre=models.CharField('Nombre',max_length=50, default="NULL")
    pica_cantidad = models.IntegerField('Cantidad',default=0)
    pica_pesoMPposproceso=models.FloatField('Peso',default=0)
    pica_merma=models.FloatField('Peso Merma',default=0)
    pica_check=models.CharField('estado',max_length=1, choices=ESTADO_CHOICES)

    
    def __str__(self):
        return f"{self.pica_nombre}-{self.pica_cantidad}{self.pica_pesoMPposproceso}-{self.pica_merma}-{self.pica_check}"
