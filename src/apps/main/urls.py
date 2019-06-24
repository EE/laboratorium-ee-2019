from django.conf.urls import url

from src.apps.main import views

urlpatterns = [
    url(
        r'^send_mail/$',
        views.SendMailView.as_view(),
        name='send_mail'
    ),
    url(
        r'^recruitment-contact/$',
        views.RecruitmentContactView.as_view(),
        name='recruitment_contact'
    ),
    url(
        r'^thanks/$',
        views.SendMailSuccessView.as_view(),
        name='send_mail_done',
    ),
]
