from django.db import models
from django.contrib.auth.models import AbstractUser, PermissionsMixin
from .managers import UserManager
# Create your models here.

class User(AbstractUser, PermissionsMixin):
    '''Clase para crear usuarios en bd'''

    username = models.CharField(max_length=10, unique=True)
    name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    is_admin=models.BooleanField('Administrador',default=False)
    is_employee=models.BooleanField('Operario',default=False)
    is_staff=models.BooleanField(default=False)
    is_superuser=models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)  # Campo para el borrado lógico

    USERNAME_FIELD='username'

    REQUIRED_FIELDS=['name','last_name']

    objects = UserManager()

    def get_short_name(self):
        return self.username
    
    def get_full_name(self):
        return self.nombres+'-'+self.apellidos
    
    def delete(self, using=None, keep_parents=False):
        '''Funcion para borrado lógico'''
        self.is_active = False  # Marcar como inactivo en lugar de eliminar
        self.save(using=using)

# class UserDeletionAudit(models.Model):
#     '''Clase para logs de borrado de usuarios'''
#     user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='deletion_logs')
#     deleted_by = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True, related_name='deletion_logs_created_by')
#     deleted_at = models.DateTimeField(auto_now_add=True)

#     def __str__(self):
#         return f'{self.user} - Deleted by {self.deleted_by} at {self.deleted_at}'


