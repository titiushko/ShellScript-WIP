@echo off

set source="F:\repositorios\SYSCAP"

if not exist C:\SYSCAP\nul goto saltar

rd C:\SYSCAP /S /Q

:saltar

xcopy %source% C:\SYSCAP /S /I /Q /Y /D:12-08-2015 /EXCLUDE:ignorar

pause>nul

exit
