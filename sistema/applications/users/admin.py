from django.contrib import admin
from . models import User, UserDeletionAudit

# Register your models here.

admin.site.register(User)
admin.site.register(UserDeletionAudit)


