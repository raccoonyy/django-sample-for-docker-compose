FROM python:3
MAINTAINER raccoony <raccoonyy@gmail.com>

RUN \
    apt-get update &&\
    apt-get -y install \
        libpq-dev \
        python-dev

WORKDIR /app

ADD    ./manage.py            /app/
ADD    ./requirements.txt     /app/
RUN    pip install -r requirements.txt

ADD    ./djangosample/        /app/djangosample/
RUN    ./manage.py collectstatic --noinput

CMD ["gunicorn", "--workers=3", "--bind", "0:8000", "djangosample.wsgi"]
