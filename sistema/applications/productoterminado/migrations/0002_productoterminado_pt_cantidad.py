# Generated by Django 5.0.2 on 2024-03-22 15:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('productoterminado', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='productoterminado',
            name='PT_cantidad',
            field=models.IntegerField(default=100),
        ),
    ]
