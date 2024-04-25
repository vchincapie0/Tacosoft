from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from .models import User, UserAudit

@receiver(pre_save, sender=User)
def log_user_change(sender, instance, **kwargs):
    if instance.deleted:
        action = 'D'  # Marcar como eliminado
        details = f"Usuario {instance.username} marcado como borrado."

    else:
        if instance.pk is None:
            action = 'C'  # Creación de usuario
            details = f"Usuario {instance.username} creado."
            print(f"User {instance.username} creado.")
        else:
            action = 'U'  # Actualización de usuario
            details = f"Usuario {instance.username} actualizado."
            print(f"User {instance.username} updated.")

    # Verifica si la instancia user esta guardada antes de crear UserAudit
    if instance.pk is not None:  # Se asegura que la instancia User este guardada
        UserAudit.objects.create(user=instance, action=action, details=details)
                