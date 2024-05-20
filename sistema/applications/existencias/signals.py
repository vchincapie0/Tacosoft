from django.db.models.signals import post_save
from django.dispatch import receiver
from applications.materiaprima.models import MateriaPrima
from .models import ExistenciaMp

@receiver(post_save, sender=MateriaPrima)
def actualizar_existencias(sender, instance, created, **kwargs):
    print('Dentro de señal existencias')
    if created:
        existencia, _ = ExistenciaMp.objects.get_or_create(mp_lote=instance)
        existencia.cantidadDisponible += 100
        existencia.save()
    else:
        # Manejar la actualización de cantidad si es necesario
        pass