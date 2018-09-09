from django.db import models

# Create your models here.
class Project(models.Model):
    title = models.CharField(max_length=255) # Название
    description = models.TextField() # Описание
    url = models.CharField(max_length=50) # Ссылка на проект
    img = models.ImageField(upload_to='project') # Изображение
    created_at = models.DateTimeField(auto_now_add=True) # Дата публикации

    def __str__(self):
        return self.title
