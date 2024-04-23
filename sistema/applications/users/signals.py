from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import User, UserDeletionAudit

@receiver(post_save, sender=User)
def log_user_deletion(sender, instance, **kwargs):
    # Crea una entrada en el registro de auditoría al eliminar un usuario
    print(f"Se esta eliminando usuario{instance.username}")
    UserDeletionAudit.objects.create(user=instance, deleted_by=instance)