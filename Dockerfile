FROM python:3.11
ENV PYTHONUNBUFFERED=1
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /app
COPY . /app
CMD ["python", "manage.py", "runserver 0.0.0.0:8000"]
