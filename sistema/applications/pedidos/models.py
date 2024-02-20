from django.db import models
from applications.users.models import User
from applications.materiaprima.models import MateriaPrima
from applications.insumos.models import ImplementosTrabajo
from applications.proveedores.models import Proveedores

# Create your models here.

class Pedidos(models.Model):

    ESTADO_CHOICES=(
        ('0','Completo'),
        ('1','Incompleto'),
        ('2','Rechazado'),

    )

    id=models.AutoField('id',primary_key=True)
    ref_pedido=models.IntegerField('Referencia',unique=True)
    pedi_user=models.ForeignKey(User,on_delete=models.CASCADE)
    pedi_fecha=models.DateField('fecha')
    pedi_estado=models.CharField('estado',max_length=1, choices=ESTADO_CHOICES)
    pedi_comprobatePago=models.CharField('Comprobante Pago',max_length=45)
    pedi_proveedor=models.ManyToManyField(Proveedores)
    pedi_materiaprima=models.ManyToManyField(MateriaPrima)
    pedi_insumos=models.ManyToManyField(ImplementosTrabajo)

    def __str__(self):
        return f"{self.ref_pedido}-{self.pedi_estado}"




