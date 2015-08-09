@echo off
rem
rem Ejemplo de manejo de la fecha y hora actual - v2014-02-05
rem

chcp 1252 > NUL

setlocal


set FECHA_ACTUAL=%DATE%
set HORA_ACTUAL=%TIME%

set ANO=%FECHA_ACTUAL:~6,4%
set MES=%FECHA_ACTUAL:~3,2%
set DIA=%FECHA_ACTUAL:~0,2%

set HORA=%HORA_ACTUAL:~0,2%
set MINUTOS=%HORA_ACTUAL:~3,2%
set SEGUNDOS=%HORA_ACTUAL:~6,2%
set CENTESIMAS=%HORA_ACTUAL:~9,2%

rem Si la hora tiene un sólo dígito, reemplazamos el espacio inicial por cero
set HORA=%HORA: =%
if %HORA% LSS 10 set HORA=0%HORA%

echo Fecha: %FECHA_ACTUAL%
echo Hora: %HORA_ACTUAL%
echo.
echo Día: %DIA%
echo Mes: %MES%
echo Año: %ANO%
echo.
echo Hora: %HORA%
echo Minutos: %MINUTOS%
echo Segundos: %SEGUNDOS%
echo Centésimas: %CENTESIMAS%
echo.
echo Ejemplo de nombre de archivo: %APPDATA%\Foo\bar %ANO%-%MES%-%DIA%.log
echo Ejemplo de línea para log: [%ANO%-%MES%-%DIA% %HORA%:%MINUTOS%:%SEGUNDOS%] Error: se ha caído la junta de la trócola 

endlocal

echo.
pause
