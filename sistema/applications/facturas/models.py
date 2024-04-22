from django.db import models
from django.utils import timezone
from applications.proveedores.models import Proveedores
from applications.pedidos.models import Pedidos

# Create your models here.
class IVA (models.Model):
    "Clase para tabla generica de IVA"

    valor=models.FloatField('IVA', default=0)

    def __str__(self):
        return f"{self.valor}"


class Facturas(models.Model):
    '''Clase para la creacion de tabla factura en bd'''

    num_factura=models.PositiveIntegerField('Numero Factura',unique=True, primary_key=True)
    fac_proveedor=models.ForeignKey(Proveedores, on_delete=models.CASCADE)
    fac_numeroPedido=models.ForeignKey(Pedidos,on_delete=models.CASCADE)
    fac_fechaLlegada=models.DateField('Fecha Llegada', default=timezone.now)
    fac_numeroUnidades=models.PositiveIntegerField('Numero de Unidades')
    fac_subtotal=models.FloatField('Subtotal')
    fac_iva=models.ForeignKey(IVA, on_delete=models.CASCADE )
    fac_total=models.FloatField('Total', default=0.0)
    img_factura=models.ImageField(upload_to='facturas',blank=True,null=True)
    is_active = models.BooleanField(default=True)  # Campo para el borrado lógico

    def __str__(self):
        return f"{self.num_factura}-{self.fac_proveedor}-{self.fac_numeroPedido}-{self.fac_total}"

    def delete(self, using=None, keep_parents=False):
        '''Funcion para borrado lógico'''
        self.is_active = False  # Marcar como inactivo en lugar de eliminar
        self.save(using=using)