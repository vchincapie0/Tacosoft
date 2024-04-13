from django.db.models.signals import pre_save, post_save
from django.dispatch import receiver
from .models import Pedidos

@receiver(pre_save, sender=Pedidos)
def set_pedi_user(sender, instance, **kwargs):
    if not instance.pedi_user:
        # Asignar el usuario autenticado actualmente al campo pedi_user
        instance.pedi_user = instance.pedi_user or None