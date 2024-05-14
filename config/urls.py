from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from apps.core.views import extract_text_from_image
from django.urls import path
from apps.core.views import upload_image

urlpatterns = [
    path('upload/', upload_image, name='upload_image'),
]

urlpatterns = [
    path('admin/', admin.site.urls),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)


urlpatterns = [
    path('extract-text/', extract_text_from_image, name='extract_text'),
]