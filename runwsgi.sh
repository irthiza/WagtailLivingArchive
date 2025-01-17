source ./venv/bin/activate
#setup
#python3 manage.py makemigrations
#python3 manage.py migrate
#python3 manage.py runserver 127.0.0.1:8000

#uwsgi --master --socket 127.0.0.1:8000 --uid mail --logto ./prodlivingarchive.log --chdir ./ --env DJANGO_SETTINGS_MODULE=livingarchive.settings.production --wsgi-file ./livingarchive/wsgi.py  --chmod-socket=666
#uwsgi --master --socket /tmp/livingarchive.sock --chdir ./ --env DJANGO_SETTINGS_MODULE=livingarchive.settings.production --wsgi-file ./livingarchive/wsgi.py  --chmod-socket=666
#uwsgi --master --socket /tmp/livingarchive.sock --chdir ./ --env DJANGO_SETTINGS_MODULE=livingarchive.settings.production --wsgi-file ./livingarchive/wsgi.py  --chmod-socket=666
uwsgi --master --socket 127.0.0.1:8000 --chdir ./ --uid mail --logto ./prodlivingarchive.log --env DJANGO_SETTINGS_MODULE=livingarchive.settings.production --wsgi-file ./livingarchive/wsgi.py  --module "django.core.handlers.wsgi:WSGIHandler()" --chmod-socket=666

