from django.urls import path
from django.utils.translation import gettext_lazy as _

from ee_site.apps.main import views

urlpatterns = [
    path(
        _(r'contact-form/'),
        views.SendMailView.as_view(),
        name='send_mail'
    ),
    path(
        _(r'thanks/'),
        views.SendMailSuccessView.as_view(),
        name='send_mail_done',
    ),
]
