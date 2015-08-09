@echo off
cd %TEMP%
rd %TEMP% /S /Q *.*
dir
pause
:: exit
