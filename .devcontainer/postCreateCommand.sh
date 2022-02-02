#!/bin/bash

apt-get update
apt-get install -y postgresql
sudo service postgresql start

sudo -u postgres psql -c "create user $PGUSER with password '$PGPASSWORD'"
sudo -u postgres createdb $PGDATABASE -O $PGUSER

pipx install poetry
poetry install

alias dbt="poetry run dbt"

dbt build
dbt docs generate
dbt snapshot
dbt source freshness