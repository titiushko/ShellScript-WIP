@echo off
@setlocal
:inicio
cls
echo   PROTO  DIRECCION LOCAL        DIRECCION REMOTA       ESTADO          PID      ESTADO DE DESCARGA
::     TCP    0.0.0.0:21             0.0.0.0:0              LISTENING       1640     EnHost
cmd /c %*"netstat -tona|FINDSTR /C:LISTENING"
:menu
echo.
echo 1) Ver Proceso.
echo 2) Ver Todos los Procesos.
echo 3) Eliminar Proceso.
echo 4) Limpiar.
echo 5) Salir.
choice /c 12345 /n
if %errorlevel% equ 5 exit
if %errorlevel% equ 4 goto inicio
if %errorlevel% equ 3 goto opcion_3
if %errorlevel% equ 2 goto opcion_2
if %errorlevel% equ 1 goto opcion_1
:opcion_1
echo.
set /p pid=ID del proceso: 
if not defined pid goto opcion_1
tasklist /svc /fi "pid eq %pid%"
set pid=
goto menu
:opcion_2
echo.
echo 1) Sistema.
echo 2) Usuarios.
choice /c 12 /n
if %errorlevel% equ 2 goto procesos_usuarios
if %errorlevel% equ 1 goto procesos_sistema
:procesos_usuarios
tasklist /v /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red"
goto menu
:procesos_sistema
tasklist /v /fi "USERNAME eq NT AUTHORITY\SYSTEM"
tasklist /v /fi "USERNAME eq NT AUTHORITY\SERVICIO LOCAL"
tasklist /v /fi "USERNAME eq NT AUTHORITY\Servicio de red"
goto menu
:opcion_3
echo.
set /p proceso=Nombre del proceso: 
if not defined proceso goto opcion_2
taskkill /f /im %proceso%.exe
set proceso=
goto menu