# laboratorium-ee-2019

## Installation (local development)

### Prerequisites

- [Python](https://www.python.org/)
- [pipenv](https://pipenv.readthedocs.io/en/latest/)
- [Node.js](https://docs.npmjs.com/getting-started/installing-node)
- [SASS](http://sass-lang.com/install)

### Installation instructions

1. Install the Python requirements:

        pipenv install --dev
        pipenv shell  # to enter the environment

2. Install the npm requirements:

        npm install

3. Create and fill out the local settings file:

       cp src/settings/env.local.example src/settings/.env
    (alternatively you can set those settings as environment variables)

4. Configure your local database by filling out `DATABASE_URL` setting in `.env` file.

    If there is no good reason to do otherwise, it should be a [Postgres](https://www.postgresql.org/) database since that's what we are using by default on production servers.

5. Run database migrations if you want an empty database or use saved database state with basic models:

        python manage.py migrate
      or
        
        cat dump.sql | ./manage.py dbshell
        
6. Install [npm](https://www.npmjs.com/) packages:

        npm install

7. Run test command to make sure everything is in order:

        python manage.py test

8. Start the frontend dev server:

       npm run start
       
9. Start the backend dev server (in a different console):

       python manage.py runserver
       python manage.py compilemessages  # to compile translation files

10. Load fixtures
    
        ./manage.py load_db HOST_NAME USERNAME DB_NAME
    for example
        
        ./manage.py load_db 127.0.0.1 postgres my_db
        
    Now you can log as admin using following data:
    
    username: admin
    
    password: cWEO3CTqIVU


## Development guidelines
Before committing to this repository, please read [the official Laboratorium EE development guidelines](https://github.com/EE/bombaatomowa).
