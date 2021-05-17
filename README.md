# Laravel-Nginx-MSSQL(SQL Server)
For laravel development starter kit.

## How to use.
1. Checkout
2. Create Laravel project.
   ```
   docker-compose run --rm laravel-mssql_composer composer create-project --prefer-dist laravel/laravel .
   ```
3. Change storage permission.
   ```
   docker-compose run --rm laravel-mssql_app chmod go+w -R storage
   ```
4. Change DATABASE settings in .env file.
   ```
   DB_CONNECTION=sqlsrv
   DB_HOST=laravel-mssql_db
   DB_PORT=1433
   DB_DATABASE=laravel-mssql
   DB_USERNAME=laravel-mssql_db_user
   DB_PASSWORD=laravel-mssql_db_P@ssw0rd
   ```
5. Start.
   ```command:powershell
   docker-compose up -d laravel-mssql_app laravel-mssql_db laravel-mssql_web
   ```
6. Into DB container and Create Database and User via SSMS  
   ```
   ./opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "P@ssw0rd" -i /var/db/createDatabase.sql
   ```
7. Access localhost:8888