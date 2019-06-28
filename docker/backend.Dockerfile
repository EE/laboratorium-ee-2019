FROM python:3.6
RUN pip install pipenv

# RUN apk add python3-dev py3-setuptools postgresql-dev zlib-dev jpeg-dev gcc musl-dev

COPY Pipfile Pipfile.lock /code/
WORKDIR /code
RUN pipenv install --dev --three
