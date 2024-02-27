from django.db import models
from applications.proveedores.models import Proveedores
from applications.pedidos.models import Pedidos

# Create your models here.

class Facturas(models.Model):
    '''Clase para la creacion de tabla factura en bd'''

    num_factura=models.PositiveIntegerField('Numero Factura',unique=True)
    fac_proveedor=models.ForeignKey(Proveedores, on_delete=models.CASCADE)
    fac_numeroPedido=models.ForeignKey(Pedidos,on_delete=models.CASCADE)
    fac_fechaLlegada=models.DateField('Fecha Llegada')
    fac_numeroUnidades=models.PositiveIntegerField('Numero de Unidades')
    fac_subtotal=models.FloatField('subtotal')
    fac_iva=models.FloatField('IVA')
    img_factura=models.ImageField(upload_to='facturas',blank=True,null=True)

    @property
    def fac_total(self):
        # Calcula el total sumando el subtotal y el IVA
        return self.fac_subtotal + self.fac_iva

    def __str__(self):
        return f"{self.num_factura}-{self.fac_proveedor}-{self.fac_numeroPedido}-{self.fac_total}"