-- psql -f databases_santix426.sql
DROP DATABASE IF EXISTS "santix426_development";
DROP DATABASE IF EXISTS "santix426_test";
DROP DATABASE IF EXISTS "santix426_production";

CREATE DATABASE "santix426_development" WITH ENCODING 'UTF8';
CREATE DATABASE "santix426_test" WITH ENCODING 'UTF8';
CREATE DATABASE "santix426_production" WITH ENCODING 'UTF8';

DROP USER "santo";
CREATE USER "santo" WITH PASSWORD 'asdfasdf';
ALTER USER "santo" WITH SUPERUSER;

GRANT ALL PRIVILEGES ON DATABASE "santix426_development" TO santo;
GRANT ALL PRIVILEGES ON DATABASE "santix426_test" TO santo;
GRANT ALL PRIVILEGES ON DATABASE "santix426_production" TO santo;

ALTER DATABASE "santix426_development" OWNER TO santo;
ALTER DATABASE "santix426_test" OWNER TO santo;
ALTER DATABASE "santix426_production" OWNER TO santo;

ALTER USER santo CREATEDB;

