@echo off
@setlocal
:inicio
cls
echo   PROTO  DIRECCION LOCAL        DIRECCION REMOTA       ESTADO          PID      ESTADO DE DESCARGA
::     TCP    0.0.0.0:21             0.0.0.0:0              LISTENING       1640     EnHost
cmd /c %*"netstat -tona|FINDSTR /C:LISTENING"
:menu
echo.
echo Opciones...
echo  -bc [PID] Buscar un proceso por codigo. Ejemplo: -bc 2660.
echo  -bn [IMAGENAME] Buscar un proceso por nombre. Ejemplo: -bn chrome.
echo  -vs Ver todos los procesos del sistema.
echo  -vu Ver todos los procesos de los usuarios locales.
echo  -ec [PID] Eliminar un proceso por codigo. Ejemplo: -ec 2660.
echo  -en [IMAGENAME] Eliminar un proceso por nombre. Ejemplo: -en chrome.
echo  -s Ver todos los servicios.
echo  -sn [NOMBRE] Eliminar un servicio por nombre. Ejemplo: -es fcs.
echo  -l Limpiar pantalla.
echo  -q Salir.
echo ------------------------------------------------------------------
:comando
set comando=
set opcion=
set proceso=
set /p comando=# 
if not defined comando goto no_es_comando
set opcion=%comando:~0,3%
set proceso=%comando:~4,10%
if /i %opcion%==-q exit
if /i %opcion%==-bc goto opcion_1
if /i %opcion%==-bn goto opcion_2
if /i %opcion%==-vs goto opcion_3
if /i %opcion%==-vu goto opcion_4
if /i %opcion%==-ec goto opcion_5
if /i %opcion%==-en goto opcion_6
if /i %opcion%==-s goto opcion_7
if /i %opcion%==-sn goto opcion_8
if /i %opcion%==-l goto inicio
:no_es_comando
echo.
goto comando
:opcion_1
echo tasklist /v /fi "PID eq %proceso%"
tasklist /v /fi "PID eq %proceso%"
goto menu
:opcion_2
echo tasklist /v /fi "IMAGENAME eq %proceso%.exe"
tasklist /v /fi "IMAGENAME eq %proceso%.exe"
goto menu
:opcion_3
echo tasklist /v /fi "USERNAME ne CREATIVA\tito.miguel"
tasklist /v /fi "USERNAME ne CREATIVA\tito.miguel"
:: tasklist /v /fi "USERNAME eq NT AUTHORITY\SYSTEM"
:: tasklist /v /fi "USERNAME eq NT AUTHORITY\SERVICIO LOCAL"
:: tasklist /v /fi "USERNAME eq NT AUTHORITY\Servicio de red"
goto menu
:opcion_4
echo tasklist /v /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red"
tasklist /v /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red"
goto menu
:opcion_5
echo taskkill /f /pid %proceso%
taskkill /f /pid %proceso%
goto menu
:opcion_6
echo taskkill /f /im %proceso%.exe
taskkill /f /im %proceso%.exe
goto menu
:opcion_7
echo sc query type= service | more
sc query type= service | more
goto menu
:opcion_8
echo sc delete %proceso%
sc delete %proceso%
goto menu
