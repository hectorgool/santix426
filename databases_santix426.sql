-- psql -f databases_santix426.sql
CREATE DATABASE "santix426_development" WITH ENCODING 'UTF8';
CREATE DATABASE "santix426_test" WITH ENCODING 'UTF8';
CREATE DATABASE "santix426_production" WITH ENCODING 'UTF8';
DROP USER "santo";
CREATE USER "santo" WITH PASSWORD 'asdfasdf';
GRANT ALL ON DATABASE "santix426_development" TO santo;
GRANT ALL ON DATABASE "santix426_test" TO santo;
GRANT ALL ON DATABASE "santix426_production" TO santo;
