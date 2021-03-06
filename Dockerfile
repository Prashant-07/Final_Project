FROM python:3.7.3-stretch

WORKDIR /app

COPY . /app/

RUN pip install --requirement requirements.txt --no-cache-dir

EXPOSE 80

CMD ["python", "app.py"]
