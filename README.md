# laboratorium-ee-2019

## Installation (local development - Docker)

1. Request appropriate permissions to Docker images on [our Docker registry](https://registry.laboratorium.ee/) from [kazet](mailto:krzysztof.zajac@laboratorium.ee)

2. Log in to our Docker repository:

        docker login registry.laboratorium.ee

3. Build Docker images

        docker-compose build

4. Run Docker images

        docker-compose up

You may also use the `run_development.sh` script.

## Installation (local development - classic)

### Prerequisites

- [Python 3.5+](https://www.python.org/)
- [pipenv](https://pipenv.readthedocs.io/en/latest/)
- [Node.js](https://docs.npmjs.com/getting-started/installing-node)
- [SASS](http://sass-lang.com/install)

### Installation instructions

1. Install the Python requirements:

        pipenv install --dev
        pipenv shell  # to enter the environment

    This project uses [Django 1.11](https://docs.djangoproject.com/en/1.11/)

2. Install the npm requirements:

        npm install

3. Create and fill out the local settings file:

       cp src/settings/env.local.example src/settings/.env
    (alternatively you can set those settings as environment variables)

4. Configure your local database by filling out `DJANGO_DATABASE_URL` setting in `.env` file.

    If there is no good reason to do otherwise, it should be a [Postgres](https://www.postgresql.org/) database since that's what we are using by default on production servers.

5. Run database migrations:

        python manage.py migrate

6. Install [npm](https://www.npmjs.com/) packages:

        npm install

7. Run test command to make sure everything is in order:

        python manage.py test

8. Start the development server:

       python manage.py runserver

## Development guidelines
Before committing to this repository, please read [the official Laboratorium EE development guidelines](https://github.com/EE/bombaatomowa).
