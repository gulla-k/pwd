from django.urls import path
from django.urls import re_path

from . import views

urlpatterns = [
	# ex: /blog/
    re_path(r'^$|^page/(?P<page>\d+)/$', views.index, name='index'),
]
