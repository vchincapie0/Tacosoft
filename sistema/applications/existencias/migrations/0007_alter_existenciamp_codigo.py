# Generated by Django 5.0.2 on 2024-05-20 22:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('existencias', '0006_alter_existenciamp_mp_lote'),
    ]

    operations = [
        migrations.AlterField(
            model_name='existenciamp',
            name='codigo',
            field=models.PositiveIntegerField(primary_key=True, serialize=False, verbose_name='Código'),
        ),
    ]
