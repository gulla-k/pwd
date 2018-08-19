from django.urls import include, path
from django.contrib import admin

urlpatterns = [
	path('', include('home.urls')),
	path('blog/', include('blog.urls')),
    path('panel/', admin.site.urls),
]