@echo off

rem Load table structure
sqlcmd -U sa -P f00bar99 -S . -d ab -i ab-schema-mssql.sql

rem Load views
sqlcmd -U sa -P f00bar99 -S . -d ab -i ab-views-mssql.sql

rem Load procedures
sqlcmd -U sa -P f00bar99 -S . -d ab -i ab-procedures-mssql.sql
