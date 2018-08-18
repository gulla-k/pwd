import datetime

from django.db import models
from django.utils import timezone

class Post(models.Model):
    post_title = models.CharField(max_length=100)
    post_description = models.CharField(max_length=2500)
    post_author = models.CharField(max_length=50)
    post_like = models.IntegerField(default=0)
    pub_date = models.DateTimeField('Дата публикации поста')

    def __str__(self):
        return self.post_title

    def was_published_recently(self):
        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)

class Comment(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    comment_text = models.CharField(max_length=250)
    comment_author = models.CharField(max_length=25)
    comment_date = models.DateTimeField('Дата публикации коммента')

    def __str__(self):
        return self.comment_text