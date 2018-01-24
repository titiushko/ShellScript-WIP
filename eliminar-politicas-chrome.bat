@echo off

IF NOT EXIST %WINDIR%\System32\GroupPolicy goto next

echo Borrando carpeta GroupPolicy...
RD /S /Q "%WINDIR%\System32\GroupPolicy" || goto error
echo.

:next
IF NOT EXIST %WINDIR%\System32\GroupPolicyUsers goto next2

echo Borrando carpeta GroupPolicyUsers...
RD /S /Q "%WINDIR%\System32\GroupPolicyUsers" || goto error
echo.

:next2
gpupdate /force

pause
exit

:error
echo.
echo Ha ocurrido un error inesperado. Has abierto el programa como administrador (clic derecho, ejecutar como administrador)?
echo.
pause
exit