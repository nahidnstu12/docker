#!/bin/bash
set -e

# Grant schema privileges on each database
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "scholars" <<-EOSQL
    GRANT ALL ON SCHEMA public TO admin;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "foodpanda" <<-EOSQL
    GRANT ALL ON SCHEMA public TO admin;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "postgres" <<-EOSQL
    GRANT ALL ON SCHEMA public TO admin;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "radius-directory" <<-EOSQL
    GRANT ALL ON SCHEMA public TO admin;
EOSQL