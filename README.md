# Laboratorium.ee

## Installation (local development)

### Prerequisites

- [Python 3.5+](https://www.python.org/)
- [pipenv](https://pipenv.readthedocs.io/en/latest/)
- [Node.js](https://docs.npmjs.com/getting-started/installing-node)
- [SASS](http://sass-lang.com/install)

### Installation instructions

1. Install the Python requirements and enter the virtual environment:

       pipenv install --dev
       pipenv shell

2. Install the npm requirements:

       npm install

3. Create and fill out the local settings file:

       cp src/settings/env.local.example src/settings/.env
    (alternatively you can set those settings as environment variables)

4. Configure your local database by filling out `DATABASE_URL` setting in `.env` file.

    If there is no good reason to do otherwise, it should be a [Postgres](https://www.postgresql.org/) database since that's what we are using by default on production servers.

5. Run database migrations:

        python manage.py migrate

6. Run test command to make sure everything is in order:

        python manage.py test

7. Start the development server:

       python manage.py runserver

## Installation (Heroku)
You can create a new Heroku server configured for this app by clicking one of the buttons below and filling out a simple form. For this to work, you need first to link your Heroku account with your Github account.
Remember to add the newly created server to the proper Pipeline.

### Using branch `develop`
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)][deploy-develop]

### Using branch `master`
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)][deploy-master]

[deploy-develop]: https://heroku.com/deploy?template=https://github.com/EE/laboratorium-ee-2019/tree/develop
[deploy-master]: https://heroku.com/deploy?template=https://github.com/EE/laboratorium-ee-2019/tree/master

## Development guidelines
Before committing to this repository, please read [the official Laboratorium EE development guidelines](https://github.com/EE/bombaatomowa).
