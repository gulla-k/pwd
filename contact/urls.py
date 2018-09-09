from django.urls import path

from . import views

urlpatterns = [
	# ex: /contact/
    path('', views.index, name='index'),
]
