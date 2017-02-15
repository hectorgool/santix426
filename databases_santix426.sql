-- mysql -u root -v < databases_santix426.sql

DROP DATABASE IF EXISTS santix426_development;
CREATE DATABASE santix426_development CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `santix426_test`;
CREATE DATABASE santix426_test CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `santix426_production`;
CREATE DATABASE santix426_production CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP USER 'santo'@'localhost';
GRANT ALL PRIVILEGES ON *.* to santo@localhost identified by 'asdfasdf' WITH GRANT option;

GRANT ALL PRIVILEGES ON *.* to hector@localhost identified by 'asdfasdf' WITH GRANT option;
