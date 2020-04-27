from django.conf.urls import url
from django.urls import include, path
from django.contrib import admin

from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^$', views.index, name='home'),
    path('polls/', include('polls.urls')),
]
