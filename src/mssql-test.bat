@echo off

rem Test DB
sqlcmd -U sa -P f00bar99 -S . -d ab -Q "SELECT * FROM v_contact"
