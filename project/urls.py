from django.urls import path

from . import views

urlpatterns = [
	# ex: /project/
    path('', views.index, name='index'),
]
