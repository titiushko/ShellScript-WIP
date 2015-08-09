@echo off
@setlocal
set inicio=%time%
:: runs your command
cmd /c %*
set fin=%time%
set opciones="tokens=1-4 delims=:."
for /f %opciones% %%a in ("%inicio%") do set start_h=%%a&set /a start_m=100%%b %% 100&set /a start_s=100%%c %% 100&set /a start_ms=100%%d %% 100
for /f %opciones% %%a in ("%fin%") do set end_h=%%a&set /a end_m=100%%b %% 100&set /a end_s=100%%c %% 100&set /a end_ms=100%%d %% 100
set /a horas=%end_h%-%start_h%
set /a minutos=%end_m%-%start_m%
set /a segundos=%end_s%-%start_s%
set /a milisegundos=%end_ms%-%start_ms%
if %horas% lss 0 set /a horas = 24%horas%
if %minutos% lss 0 set /a horas = %horas% - 1 & set /a minutos = 60%minutos%
if %segundos% lss 0 set /a minutos = %minutos% - 1 & set /a segundos = 60%segundos%
if %milisegundos% lss 0 set /a segundos = %segundos% - 1 & set /a milisegundos = 100%milisegundos%
if 1%milisegundos% lss 100 set milisegundos=0%milisegundos%
:: mission accomplished
set /a total_segundos = %horas%*3600 + %minutos%*60 + %segundos%
echo %horas%:%minutos%:%segundos%.%milisegundos% (%total_segundos%.%milisegundos%s total)