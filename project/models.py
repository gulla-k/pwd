import os
from django.utils import timezone
from django.db import models
from datetime import datetime
from slugify import slugify     # тут используется awesome-slugify
from PIL import Image           # для обработки изображения нам нужен pillow


def some_model_file_name(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s.%s" % (slugify(instance.title, to_lower=True), ext)
    return os.path.join('project', filename)

def some_model_thumb_name(instance, filename):
    original_image_path = str(instance.img).rsplit('/', 1)[0]
    return os.path.join('media/project/previews/', filename)

# Create your models here.
class Project(models.Model):
    title = models.CharField('Название', max_length=255) # Название
    description = models.TextField('Описание') # Описание
    url = models.CharField('Адрес проекта', max_length=50) # Ссылка на проект
    img = models.ImageField('Обложка', upload_to='project', default='') # Изображение
    img_thumb = models.CharField('Превью обложки', max_length=255, editable=False, blank=True)
    created_at = models.DateTimeField('Дата публикации поста') # Дата публикации

    def __str__(self):
        return self.title

    def was_published_recently(self):
        return self.created_at >= timezone.now() - datetime.timedelta(days=1)

    def __init__(self, *args, **kwargs):
        super(Project, self).__init__(*args, **kwargs)
        self.__original_image = self.img.url

    def get_thumb_image_url(self):
        return MEDIA_URL + self.img_thumb

    def save(self, *args, **kwargs):
        if self.img.url != self.__original_image:
            size = {'height': 400, 'width': 400}
            super(Project, self).save(*args, **kwargs)
            extension = str(self.img.path).rsplit('.', 1)[1]  # получаем расширение загруженного файла
            filename = str(self.img.path).rsplit(os.sep, 1)[1].rsplit('.', 1)[0]  # получаем имя загруженного файла (без пути к нему и расширения)
            fullpath = str(self.img.path).rsplit(os.sep, 1)[0]  # получаем путь к файлу (без имени и расширения)

            if extension in ['jpg', 'jpeg', 'png']:    # если расширение входит в разрешенный список
                im = Image.open(str(self.img.path))  # открываем изображение
                im.thumbnail((size['width'], size['height'])) # создаем миниатюру указанной ширины и высоты (важно - im.thumbnail сохраняет пропорции изображения!)
                thumbname = filename + '.' + extension # имя нового изображения в формате oldname_60x60.jpg
                im.save(fullpath + os.sep + 'previews' + os.sep + thumbname) # сохраняем полученную миниатюру
                self.img_thumb = some_model_thumb_name(self, thumbname) # записываем путь к ней в поле image_thumb в модели
                super(Project, self).save(*args, **kwargs)
        else:
            super(Project, self).save(*args, **kwargs)
