import threading
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model
from .models import User, UserAudit

# Obtener el modelo de usuario personalizado
User = get_user_model()

@receiver(post_save, sender=User)
def log_user_change(sender, instance, created, **kwargs):
    current_user = getattr(threading, 'current_user', None)

    if current_user:
        changed_by = current_user

    if instance.deleted:
        action = 'D'  # Marcar como eliminado
        details = f"{instance.name} {instance.last_name} ha sido borrado."
    elif created:
        action = 'C'  # Creación de usuario
        details = f"{instance.name} {instance.last_name} ha sido creado."
    else:
        action = 'U'  # Actualización de usuario
        details = f"La información de {instance.name} {instance.last_name} ha sido actualizado."

    # Crear el registro de auditoría con el usuario que realizó la acción
    UserAudit.objects.create(user=instance, action=action, details=details, changed_by=changed_by)
