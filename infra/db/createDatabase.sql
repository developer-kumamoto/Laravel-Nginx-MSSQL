CREATE DATABASE laravel-mssql;
CREATE LOGIN laravel-mssql_db_user WITH PASSWORD = 'laravel-mssql_db_P@ssw0rd';
ALTER SERVER ROLE sysadmin ADD MEMBER [laravel-mssql_db_user];
CREATE USER laravel-mssql_db_user FOR LOGIN laravel-mssql_db_user;