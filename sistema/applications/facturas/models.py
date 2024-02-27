from django.db import models
from applications.proveedores.models import Proveedores
from applications.pedidos.models import Pedidos

# Create your models here.

class Facturas(models.Model):
    '''Clase para la creacion de tabla factura en bd'''

    num_factura=models.PositiveIntegerField('Numero Factura',unique=True)
    fac_proveedor=models.ForeignKey(Proveedores)
    fac_numeroPedido=models.ForeignKey(Pedidos)
    fac_fechaLlegada=models.DateField('Fecha Llegada')
    fac_numeroUnidades=models.PositiveIntegerField('Numero de Unidades')
    fac_subtotal=models.FloatField('subtotal')
    fac_iva=models.FloatField('IVA')
    fac_total=models.FloatField('Total')
    img_factura=models.ImageField(upload_to='facturas',blank=True,null=True)

    