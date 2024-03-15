from django.db.models.signals import pre_save
from django.dispatch import receiver
from .models import CaracteristicasOrganolepticas, Desinfeccion

@receiver(pre_save, sender=CaracteristicasOrganolepticas)
def actualizar_estado(sender, instance, **kwargs):
    # Verificar si todas las características son iguales a cero
    if instance.olor == instance.textura == instance.limpieza == instance.empaque == instance.color == True:
        # Establecer el estado como 'Aprobado'
        instance.estado = '0'  # Suponiendo que '0' corresponde a 'Aprobado' según tus opciones
    else:
        instance.estado = '1'

@receiver(pre_save, sender=Desinfeccion)
def set_responsable(sender, instance, **kwargs):
    if not instance.responsable:
        # Asigna el usuario actual como responsable
        instance.responsable = instance.mp_lote.responsable