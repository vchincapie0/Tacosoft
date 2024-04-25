# Generated by Django 5.0.2 on 2024-04-25 19:32

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Proveedores',
            fields=[
                ('prov_id', models.AutoField(primary_key=True, serialize=False, verbose_name='id')),
                ('nit', models.IntegerField(unique=True, verbose_name='NIT')),
                ('prov_nombre', models.CharField(max_length=40, verbose_name='Nombre')),
                ('prov_telefono', models.CharField(max_length=10, verbose_name='Telefono')),
                ('is_active', models.BooleanField(default=True)),
            ],
        ),
    ]
