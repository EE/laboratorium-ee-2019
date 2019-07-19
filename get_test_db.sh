heroku run -a laboratorium-ee-test 'pg_dump $DATABASE_URL --disable-dollar-quoting --clean --no-privileges --no-owner' | ./manage.py dbshell
cat << EOF | ./manage.py shell

from django.contrib.auth.models import User
User.objects.all().delete()
User.objects.create_superuser('admin', '', 'adminadmin')

from django.contrib.sessions.models import Session
Session.objects.all().delete()

from wagtail.images.models import Rendition
Rendition.objects.all().delete()

from wagtail.core.models import PageRevision
PageRevision.objects.all().delete()

EOF
