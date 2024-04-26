# Generated by Django 5.0.2 on 2024-04-26 18:18

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('materiaprima', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name='desinfeccion',
            name='responsable',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='desinfeccion',
            name='des_nombre',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.desinfectantegenerico'),
        ),
        migrations.AddField(
            model_name='desinfeccion',
            name='mp_lote',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprima'),
        ),
        migrations.AddField(
            model_name='caracteristicasorganolepticas',
            name='mp_lote',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprima'),
        ),
        migrations.AddField(
            model_name='materiaprima',
            name='mp_nombre',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprimagenerica'),
        ),
    ]
