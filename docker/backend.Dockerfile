FROM alpine:latest
RUN apk add python3-dev py3-setuptools postgresql-dev zlib-dev jpeg-dev gcc musl-dev
RUN pip3 install pipenv

COPY Pipfile Pipfile.lock /code/
WORKDIR /code
RUN pipenv install --dev --three
