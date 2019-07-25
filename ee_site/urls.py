"""laboratorium-ee-2019 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

from django.conf import settings
from django.conf.urls import url
from django.conf.urls.static import static
from django.views import defaults as views_defaults
from django.urls import re_path, include, path

from wagtail.admin import urls as wagtailadmin_urls
from wagtail.core import urls as wagtail_urls

urlpatterns = [
    path('', include('ee_site.apps.main.urls')),
    re_path(r'^cms/', include(wagtailadmin_urls)),

    re_path(r'', include(wagtail_urls)),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if settings.DEBUG:
    # For viewing 404 and 500 pages in debug mode
    urlpatterns += [
        url(r'^404/$', views_defaults.page_not_found, kwargs={'exception': Exception('Page not Found')}),
        url(r'^500/$', views_defaults.server_error),
    ]
