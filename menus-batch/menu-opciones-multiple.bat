@echo off 

REM Los atributos de color están especificados con dos dígitos hex (el primero corresponde al segundo plano; el segundo al primer plano).
REM Los dígitos pueden ser cualquiera de los siguientes valores:
REM 0 = Negro       8 = Gris
REM 1 = Azul        9 = Azul claro
REM 2 = Verde       A = Verde claro
REM 3 = Aguamarina  B = Aguamarina claro
REM 4 = Rojo        C = Rojo claro
REM 5 = Púrpura     D = Púrpura claro
REM 6 = Amarillo    E = Amarillo claro
REM 7 = Blanco      F = Blanco brillante
REM INSTRUCCIONES:
REM Abrir tu editor de texto favorito se recomienda Notepad.exe, Notepad++ entre otros.
REM Copiar y pegar el código anterior.
REM Editar y adaptar a tus necesidades.
REM Guardar el archivo con la extensión .bat ó .cmd

title Selecciona un color

:inicio
cls
echo ********************
echo *****-=[MENU]=-*****
echo ********************
echo 1) Opcion 1    
echo 2) Opcion 2    
echo 3) Opcion 3    
echo 4) Opcion 4    
echo 5) Opcion 5    
echo ********************
echo 6) Salir
echo ********************
echo.

set /p var=Seleccione una opcion [1-6]: 
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto salir

::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto inicio

:op1
    echo.
    echo. Has elegido la opcion No. 1
    echo.
        ::Aquí van las líneas de comando de tu opción
        color 08
    echo.
    pause 
    goto inicio

:op2
    echo.
    echo. Has elegido la opcion No. 2
    echo.
        ::Aquí van las líneas de comando de tu opción
        color 09
    echo.
    pause
    goto inicio

:op3
    echo.
    echo. Has elegido la opcion No. 3
    echo.
        ::Aquí van las líneas de comando de tu opción
        color 0A
    echo.
    pause
    goto inicio
    
:op4
    echo.
    echo. Has elegido la opcion No. 4
    echo.
        ::Aquí van las líneas de comando de tu opción
        color 0B
    echo.
    pause
    goto inicio

:op5
    echo.
    echo. Has elegido la opcion No. 5
    echo.
        ::Aquí van las líneas de comando de tu opción
        color 0C
    echo.
    pause
    goto inicio

:salir
    @cls&exit