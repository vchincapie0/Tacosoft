# Generated by Django 5.0.2 on 2024-04-29 23:40

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pedidos', '0004_pedidosaudit_pedido'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AlterField(
            model_name='pedidosaudit',
            name='changed_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='pedidos_logs', to=settings.AUTH_USER_MODEL),
        ),
    ]