#!/bin/bash

apt-get update
apt-get install -y postgresql
sudo service postgresql start

sudo -u postgres psql -c "create user $PGUSER with password '$PGPASSWORD'"
sudo -u postgres createdb $PGDATABASE -O $PGUSER

pipx install poetry
poetry install

poetry run dbt deps
poetry run dbt build
poetry run dbt docs generate
poetry run dbt snapshot
poetry run dbt source freshness