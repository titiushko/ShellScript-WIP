@echo off
cls
:: taskkill /f /im
echo SE ELIMINARAN LOS SIGUIENTES PROCESOS:
tasklist /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red" /fi "IMAGENAME ne System" /fi "IMAGENAME ne explorer.exe" /fi "IMAGENAME ne dllhost.exe" /fi "IMAGENAME ne dwm.exe" /fi "IMAGENAME ne cmd.exe" /fi "IMAGENAME ne tasklist.exe" /fi "IMAGENAME ne cmd.exe" /fi "IMAGENAME ne conhost.exe" /fi "IMAGENAME ne bash.exe"
echo.
choice /m "CONTINUAR "
if %errorlevel%==2 goto no
if %errorlevel%==1 goto si
:si
for /f %%f in ('tasklist /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red" /fi "IMAGENAME ne System" /fi "IMAGENAME ne explorer.exe" /fi "IMAGENAME ne dllhost.exe" /fi "IMAGENAME ne dwm.exe" /fi "IMAGENAME ne cmd.exe" /fi "IMAGENAME ne tasklist.exe" /fi "IMAGENAME ne conhost.exe" /fi "IMAGENAME ne bash.exe"') do (
	if /i not %%f==nombre if /i not %%f=========================== taskkill /f /im %%f
)
goto salir
:no
goto salir
:salir