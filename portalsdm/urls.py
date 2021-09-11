from django.contrib import admin
from django.urls import path, include

from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('MainApp.urls')),
]

if settings.DEBUG: # new
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

admin.site.site_header = "Subsitesdm Admin"
admin.site.site_title = "Subsitesdm  Admin Portal"
admin.site.index_title = "Selamat Datang Admin Portal"