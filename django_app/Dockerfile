FROM python:3.10

ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt


ENTRYPOINT [ "./docker-entrypoint.sh" ]

COPY . .

EXPOSE 8000

CMD [ "python","manage.py","runserver","0:8000" ]