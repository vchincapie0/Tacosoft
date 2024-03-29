# Generated by Django 5.0.2 on 2024-03-15 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Facturas',
            fields=[
                ('num_factura', models.PositiveIntegerField(primary_key=True, serialize=False, unique=True, verbose_name='Numero Factura')),
                ('fac_fechaLlegada', models.DateField(verbose_name='Fecha Llegada')),
                ('fac_numeroUnidades', models.PositiveIntegerField(verbose_name='Numero de Unidades')),
                ('fac_subtotal', models.FloatField(verbose_name='subtotal')),
                ('fac_iva', models.FloatField(verbose_name='IVA')),
                ('img_factura', models.ImageField(blank=True, null=True, upload_to='facturas')),
            ],
        ),
    ]
