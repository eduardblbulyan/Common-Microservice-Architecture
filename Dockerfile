# for django
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn","--bind", "0.0.0.0:8000", "--workers", "3", "myshop.wsgi:application"]