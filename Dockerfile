FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN django-admin startproject mysite

WORKDIR /usr/src/app/mysite
RUN sed -i '28s/.*/ALLOWED_HOST=["*"]/' /usr/src/app/mysite/mysite/settings.py

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

