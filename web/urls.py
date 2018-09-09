from django.urls import include, path
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
	path('', include('home.urls')),
	path('blog/', include('blog.urls')),
	path('project/', include('project.urls')),
	path('about/', include('about.urls')),
	path('contact/', include('contact.urls')),
    path('panel/', admin.site.urls),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
