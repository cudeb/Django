FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/cudeb/pragmatic.git

WORKDIR /home/pragmatic

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-grp4x23_=6h6=!ee1o+@t^t7b##8or*-#$qfwnu%px9_ktd$*x" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]