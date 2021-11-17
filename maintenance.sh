# Maintenance commands to be run every now and then (eg once a day).

python manage.py fixtree
python manage.py update_index
python manage.py clearsessions
python manage.py search_garbage_collect
