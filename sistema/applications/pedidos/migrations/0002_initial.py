# Generated by Django 5.0.2 on 2024-05-04 22:56

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('pedidos', '0001_initial'),
        ('proveedores', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='pedidos',
            name='pedi_proveedor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='proveedores.proveedores'),
        ),
    ]
