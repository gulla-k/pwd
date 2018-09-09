from django.urls import path

from . import views

urlpatterns = [
	# ex: /about/
    path('', views.index, name='index'),
]
