# Generated by Django 5.0.2 on 2024-05-04 22:56

import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CaracteristicasOrganolepticas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('olor', models.BooleanField(default=False, verbose_name='Olor')),
                ('textura', models.BooleanField(default=False, verbose_name='Textura')),
                ('limpieza', models.BooleanField(default=False, verbose_name='Limpieza')),
                ('empaque', models.BooleanField(default=False, verbose_name='Empaque')),
                ('color', models.BooleanField(default=False, verbose_name='Color')),
                ('estado', models.CharField(choices=[('0', 'Aprobado'), ('1', 'No Aprobado')], max_length=1, verbose_name='Estado')),
            ],
        ),
        migrations.CreateModel(
            name='Desinfeccion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('concentracion', models.IntegerField(verbose_name='Concentración')),
                ('tiempo_inicio', models.TimeField(verbose_name='Tiempo de Inicio')),
                ('tiempo_fin', models.TimeField(verbose_name='Fin Desinfección')),
                ('obsevacion', models.CharField(blank=True, max_length=100, null=True, verbose_name='Observaciones')),
            ],
        ),
        migrations.CreateModel(
            name='DesinfectanteGenerico',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('des_nombre', models.CharField(max_length=50, verbose_name='Nombre')),
            ],
        ),
        migrations.CreateModel(
            name='MateriaPrima',
            fields=[
                ('mp_lote', models.IntegerField(primary_key=True, serialize=False, verbose_name='Lote')),
                ('mp_cantidad', models.IntegerField(default=100)),
                ('mp_fechallegada', models.DateField(default=django.utils.timezone.now, verbose_name='Fecha Ingreso')),
                ('mp_fechavencimiento', models.DateField(default=django.utils.timezone.now, verbose_name='Fecha Vencimiento')),
            ],
        ),
        migrations.CreateModel(
            name='MateriaPrimaGenerica',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mp_nombre', models.CharField(max_length=50, verbose_name='Nombre')),
                ('mp_tipo', models.CharField(choices=[('0', 'Proteina'), ('1', 'Lácteo'), ('2', 'Verduras'), ('3', 'Frutas'), ('4', 'Otros')], default=0, max_length=1, verbose_name='Tipo')),
            ],
        ),
    ]
