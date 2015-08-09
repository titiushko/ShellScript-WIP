@echo off
mode con cols=50 lines=20
:menu
color b
cls
set var1=
set var2=
set var3=
echo CALCULADORA
echo 1) Sumar.
echo 2) Restar.
echo 3) Multiplicar.
echo 4) Dividir.
echo 5) Operaciones Multiples.
echo 6) Salir.
choice /c 123456 /n /m "Seleccionar una opcion: "
if %errorlevel% equ 6 exit
if %errorlevel% equ 5 goto todos
if %errorlevel% equ 4 goto divicion
if %errorlevel% equ 3 goto multiplicacion
if %errorlevel% equ 2 goto resta
if %errorlevel% equ 1 goto suma
:suma
:suma_numero1
set /p var1=Numero 1: 
if not defined var1 goto suma_numero1
:suma_numero2
set /p var2=Numero 2: 
if not defined var2 goto suma_numero2
set /a var3=%var1% + %var2%
echo %var1% + %var2% = %var3%
pause >nul
goto menu
:resta
:resta_numero1
set /p var1=Numero 1: 
if not defined var1 goto resta_numero1
:resta_numero2
set /p var2=Numero 2: 
if not defined var2 goto resta_numero2
set /a var3=%var1% - %var2%
echo %var1% - %var2% = %var3%
pause >nul
goto menu
:multiplicacion
:multiplicacion_numero1
set /p var1=Numero 1: 
if not defined var1 goto multiplicacion_numero1
:multiplicacion_numero2
set /p var2=Numero 2: 
if not defined var2 goto multiplicacion_numero2
set /a var3=%var1% * %var2%
echo %var1% * %var2% = %var3%
pause >nul
goto menu
:divicion
:divicion_numero1
set /p var1=Numero 1: 
if not defined var1 goto divicion_numero1
:divicion_numero2
set /p var2=Numero 2: 
if not defined var2 goto divicion_numero2
set /a var3=%var1% / %var2%
echo %var1% / %var2% = %var3%
pause >nul
goto menu
:todos
cls
echo Escribir operacion matematica.
echo Ejemplos:
echo          (4*3)/2
echo          4*3/2
echo          4 * 3 / 2
echo (R)egresar, (S)alir.
:repetir
set operacion=
set resultado=
set /p operacion=: 
if not defined operacion goto repetir
if %operacion%==r goto menu
if %operacion%==R goto menu
if %operacion%==s exit
if %operacion%==S exit
set /a resultado=%operacion%
:: echo %operacion%=%resultado%
echo %resultado%
goto repetir