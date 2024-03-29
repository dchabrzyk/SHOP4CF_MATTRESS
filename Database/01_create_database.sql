﻿ALTER SYSTEM SET wal_level = logical;

CREATE DATABASE "%DB_NAME%"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

GRANT TEMPORARY, CONNECT ON DATABASE "%DB_NAME%" TO PUBLIC;

GRANT ALL ON DATABASE "%DB_NAME%" TO postgres;

CREATE USER mamma_user NOINHERIT PASSWORD 'mamma_pass';

COMMENT ON ROLE mamma_user IS 'mamma standard user';

GRANT CONNECT ON DATABASE "%DB_NAME%" TO mamma_user;

