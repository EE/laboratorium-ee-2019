from django.conf.urls import url

from src.apps.main import views

urlpatterns = [
    url(
        r'^send_mail/$',
        views.SendMail.as_view(),
        name='send_mail'
    ),
    url(
        r'^thanks/$',
        views.thanks,
        name='thanks'
    ),
]
