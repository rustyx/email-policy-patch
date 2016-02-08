@echo off
call mvn clean package -Prelease
if errorlevel 1 goto p
goto :eof
:p
pause
