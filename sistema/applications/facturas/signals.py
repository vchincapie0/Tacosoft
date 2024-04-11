from django.db.models.signals import pre_save, post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model
from .models import Facturas, IVA

@receiver(pre_save, sender=Facturas)
def calcular_total_factura(sender, instance, **kwargs):
    # Obtener el valor de IVA asociado a la factura
    iva_valor = instance.fac_iva.valor if instance.fac_iva else 0.0
    
    # Calcular el total como subtotal más IVA
    subtotal = instance.fac_subtotal
    total = subtotal+(subtotal * iva_valor)  # Calcular el total con IVA
    # Asignar el total calculado a fac_total
    instance.fac_total = total