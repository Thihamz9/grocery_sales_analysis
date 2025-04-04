@echo off
setlocal

rem -- Set the database connection parameters
set PGUSER=postgres
set PGPASSWORD=
set PGHOST=localhost
set PGDATABASE=grocery_sales
set PGPORT=5432

rem -- Set the directory for join_sales.sql and the output csv
set SQL_FILE_PATH=join_sales.sql
set CSV_OUTPUT_PATH=join_sales.csv

rem -- Run the query and export to CSV
echo Running SQL query and exporting to CSV...
psql -U %PGUSER% -d %PGDATABASE% -h %PGHOST% -p %PGPORT% -f %SQL_FILE_PATH% --no-align --pset format=csv --pset footer=off -o %CSV_OUTPUT_PATH%

if %ERRORLEVEL% == 0 (
    echo Success: Data exported to %CSV_OUTPUT_PATH%
) else (
    echo Error: Failed to export data
)

rem -- Reset environment variables
set PGUSER=
set PGPASSWORD=
set PGHOST=
set PGDATABASE=
set PGPORT=

endlocal
