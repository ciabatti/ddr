web: python manage.py makemigrations && \
     python manage.py migrate && \
     python manage.py collectstatic --noinput && \
     gunicorn ddrproject.wsgi:application --log-file -
