from django.db.models.signals import pre_save, post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model
from .models import ImplementosAudit
import threading

# Obtener el modelo de implementos personalizados
User = get_user_model()

@receiver(post_save, sender=ImplementosAudit)
def log_user_change(sender, instance, created, **kwargs):
    current_user = getattr(threading, 'current_user', None)

    if current_user:
        changed_by = current_user

    if instance.deleted:
        action = 'D'  # Marcar como eliminado
        details = f"{instance.it_nombre} ha sido borrado."
    elif created:
        action = 'C'  # Creación de producto
        details = f"{instance.it_nombre} ha sido creado."
    else:
        action = 'U'  # Actualización de producto
        details = f"La información de {instance.it_nombre} ha sido actualizado."

    # Crear el registro de auditoría con el usuario que realizó la acción
    ImplementosAudit.objects.create(implementostrabajo=instance, action=action, details=details, changed_by=changed_by)
