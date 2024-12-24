@echo off
setlocal enabledelayedexpansion

set /p filename=Enter the name for the password without extensions: 
set "filename=%filename%.txt"

set "string=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "result="

for /L %%i in (1,1,16) do call :add
echo %result% > "%filename%"

start %filename%

goto :eof

:add
set /a x=%random% %% 62
set result=%result%!string:~%x%,1!
goto :eof