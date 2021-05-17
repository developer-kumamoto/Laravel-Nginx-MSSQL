CREATE DATABASE laravel_mssql;
CREATE LOGIN laravel_mssql_db_user WITH PASSWORD = 'laravel_mssql_db_P@ssw0rd';
ALTER SERVER ROLE sysadmin ADD MEMBER [laravel_mssql_db_user];
CREATE USER laravel_mssql_db_user FOR LOGIN laravel_mssql_db_user;