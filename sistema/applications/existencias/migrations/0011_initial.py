# Generated by Django 5.0.2 on 2024-05-23 20:19

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('existencias', '0010_delete_existenciamateriaprima'),
        ('materiaprima', '0004_materiaprimagenerica_cantidad_total_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='ExistenciaMp',
            fields=[
                ('codigo', models.PositiveIntegerField(primary_key=True, serialize=False, verbose_name='Código')),
                ('cantidadIngresada', models.PositiveIntegerField(verbose_name='Cantidad Ingresada')),
                ('cantidadEgresada', models.PositiveIntegerField(verbose_name='Cantidad Egresada')),
                ('mp_lote', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprima')),
            ],
        ),
    ]
