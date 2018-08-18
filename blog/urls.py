from django.urls import path

from . import views

urlpatterns = [
	# ex: /blog/
    path('', views.index, name='index'),
    # ex: /blog/5/
    path('<int:post_id>/', views.blog, name='blog'),
    # ex: /blog/5/comment/
    path('<int:post_id>/comment/', views.comment, name='comment'),
]