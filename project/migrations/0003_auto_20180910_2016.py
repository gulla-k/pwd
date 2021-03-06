# Generated by Django 2.1.1 on 2018-09-10 17:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0002_auto_20180909_1226'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='img_thumb',
            field=models.CharField(blank=True, max_length=255, verbose_name='Превью обложки'),
        ),
        migrations.AlterField(
            model_name='project',
            name='created_at',
            field=models.DateTimeField(verbose_name='Дата публикации поста'),
        ),
        migrations.AlterField(
            model_name='project',
            name='description',
            field=models.TextField(verbose_name='Описание'),
        ),
        migrations.AlterField(
            model_name='project',
            name='img',
            field=models.ImageField(upload_to='project', verbose_name='Обложка'),
        ),
        migrations.AlterField(
            model_name='project',
            name='title',
            field=models.CharField(max_length=255, verbose_name='Название'),
        ),
        migrations.AlterField(
            model_name='project',
            name='url',
            field=models.CharField(max_length=50, verbose_name='Адрес проекта'),
        ),
    ]
