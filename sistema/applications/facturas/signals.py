from django.db.models.signals import pre_save, post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model
from .models import Facturas

@receiver(pre_save, sender=Facturas)
def calcular_total(sender, instance, **kwargs):
    # Calculate total = subtotal + iva
    instance.fac_total = instance.fac_subtotal+(instance.fac_subtotal * instance.fac_iva)