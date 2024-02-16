from django.db import models

# Create your models here.

class ImplementosTrabajo(models.Model):
    
    class Estado(models.TextChoices):
        DISPONIBLE = '0', 'Disponible'
        NO_DISPONIBLE = '1', 'No Disponible'

    it_codigo = models.AutoField(primary_key=True)
    it_nombre = models.CharField('Nombre', max_length=50)
    it_cantidad = models.IntegerField('Cantidad')
    it_fechaEntrega = models.DateField('Fecha Entrega')
    it_estado = models.CharField('Estado', max_length=1, choices=Estado.choices)

    def __str__(self):
        return f"{self.it_codigo}-{self.it_nombre}-{self.it_fechaEntrega}"

    def save(self, *args, **kwargs):
        # Condiciona el estado basándote en el campo it_cantidad
        if self.it_cantidad == 0:
            self.it_estado = self.Estado.NO_DISPONIBLE
        else:
            self.it_estado = self.Estado.DISPONIBLE

        super().save(*args, **kwargs)