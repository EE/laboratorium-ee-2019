from django.conf.urls import url

from src.apps.main import views

urlpatterns = [
    url(
        r'^send_mail/$',
        views.SendMailView.as_view(),
        name='send_mail'
    ),
    url(
        r'^send_mail_with_attachment/$',
        views.SendMailWithAttachmentView.as_view(),
        name='send_mail_with_attachment'
    ),
    url(
        r'^thanks/$',
        views.thanks,
        name='thanks'
    ),
]
