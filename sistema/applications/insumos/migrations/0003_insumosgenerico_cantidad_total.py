# Generated by Django 5.0.2 on 2024-05-20 22:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('insumos', '0002_implementosaudit'),
    ]

    operations = [
        migrations.AddField(
            model_name='insumosgenerico',
            name='cantidad_total',
            field=models.IntegerField(default=0, verbose_name='Cantidad Total'),
        ),
    ]
