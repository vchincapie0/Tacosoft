# Generated by Django 5.0.2 on 2024-05-20 20:41

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('existencias', '0003_rename_cantidadingresada_existenciamp_cantidaddisponible'),
        ('materiaprima', '0003_materiaprimaaudit'),
    ]

    operations = [
        migrations.AlterField(
            model_name='existenciamp',
            name='mp_lote',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprimagenerica'),
        ),
    ]
