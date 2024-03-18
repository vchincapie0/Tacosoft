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

# Signal to automatically set the responsable field to the logged-in user
@receiver(pre_save, sender=Desinfeccion)
def set_responsable(sender, instance, **kwargs):
    # Check if the responsable field is empty
    if not instance.responsable:
        # Get the logged-in user from the request object
        user = instance.responsable
        # Assign the logged-in user as the responsable
        if user.is_authenticated:
            instance.responsable = user