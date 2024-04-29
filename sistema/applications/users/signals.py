from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from .models import User, UserAudit

@receiver(post_save, sender=User)
def log_user_change(sender, instance, created, **kwargs):
    if instance.deleted:
        action = 'D'  # Marcar como eliminado
        details = f"Usuario {instance.username} marcado como borrado."
    elif created:
        action = 'C'  # Creación de usuario
        details = f"Usuario {instance.username} creado."
    else:
        action = 'U'  # Actualización de usuario
        details = f"Usuario {instance.username} actualizado."
        print("Se edita usuario")

    # Evitar crear UserAudit si no hay cambios significativos (solo en actualizaciones)
    if not created or instance.deleted:
        UserAudit.objects.create(user=instance, action=action, details=details)

                