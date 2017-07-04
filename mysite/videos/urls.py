from django.conf.urls import url

from . import views

app_name = 'videos'
urlpatterns = [
	url(r'^(?P<video_id>[0-9]+)/$', views.oneVideo, name='oneVideo'),
	url(r'^testing/(?P<video_id>[0-9]+)/$', views.oneVideoTesting, name='oneVideoTesting'),
]