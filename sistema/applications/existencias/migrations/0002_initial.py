<<<<<<< HEAD
# Generated by Django 5.0.2 on 2024-04-26 18:18
=======
# Generated by Django 5.0.2 on 2024-05-04 22:56
>>>>>>> a1149eb053fc25177279bf19269916628958bfa8

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('existencias', '0001_initial'),
        ('materiaprima', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='existenciamp',
            name='mp_lote',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materiaprima.materiaprima'),
        ),
    ]
