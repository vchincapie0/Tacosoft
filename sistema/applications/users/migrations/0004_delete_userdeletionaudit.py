# Generated by Django 5.0.2 on 2024-04-22 21:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_userdeletionaudit'),
    ]

    operations = [
        migrations.DeleteModel(
            name='UserDeletionAudit',
        ),
    ]
