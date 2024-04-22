from django.db.models.signals import post_delete
from django.dispatch import receiver
from .models import User, UserDeletionAudit

@receiver(post_delete, sender=User)
def log_user_deletion(sender, instance, **kwargs):
    # Crea una entrada en el registro de auditoría al eliminar un usuario
    UserDeletionAudit.objects.create(user=instance, deleted_by=instance)