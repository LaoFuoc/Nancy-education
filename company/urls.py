#!/usr/bin/env python
# -*- coding:utf-8 -*-
from django.conf import settings
from django.conf.urls import url, include
from django.contrib import admin
from django.urls import path
from django.views.static import serve

from companyinfo.views import *

urlpatterns = [
    url(r'^jet/', include('jet.urls', 'jet')),
    path('admin/', admin.site.urls),
    path('', IndexView.as_view(), name='index'),
    path('about/', AboutView.as_view(), name='gynx'),
    path('course/', CourseView.as_view(), name='kcjs'),
    path('teach/', TeachView.as_view(), name='jxtx'),
    path('dynamic/', DynamicView.as_view(), name='zxdt'),
    path('dynamic/detail/<int:pk>/', NewsDetailView.as_view(), name='news_detail'),
    path('programming/', ProgramingView.as_view(), name='xnbc'),
    path('contact/', ContactView.as_view(), name='lxwm'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}, name='static'),
    url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}, name='media'),
]

if settings.DEBUG:
    urlpatterns.append(url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}))
    urlpatterns.append(url(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}))
