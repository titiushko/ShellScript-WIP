@echo off
TITLE bY piKa
color fc
cls
:MENU
color 0c
CLS
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo ß°°°°°°°°°°°°°°ppppppp °°°°°°°ii °°°°°°kk °°°kkk °°°°°°°aaaaaaaa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°pp °°°°°°ii °°°°°°kk °°°kk °°°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°pp °°°°°°ii °°°°°°kk °°kk °°°°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp    pp °°°°°°ii °°°°°°kk °kk °°°°°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pppppppp °°°°°°ii °°°°°°kkkkk °°°°°°°°°°°aaaaaaaa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°°°°°°°°°°ii °°°°°°kk °kk °°°°°°°°°°aaaaaaaa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°°°°°°°°°°ii °°°°°°kk °°kk °°°°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°°°°°°°°°°ii °°°°°°kk °°°kk °°°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°pp °°°°°°°°°°°°ii °°°°°°kk °°°kkk °°°°°°°aa °°°aa °°°°°°°°°°ß
echo ß°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°ß
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
pause

:MENUPPL
cls
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo ß                     ACA PORDRIA IR EL TITULO                     ß
echo ß                                                                  ß
echo ß                                                                  ß
echo ß                                                                  ß
echo ß   AKI TODO EL CONTENIDO                                          ß
echo ß                                                                  ß
echo ß                                                                  ß
echo ß                                                                  ß
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo ß     (TUS OPCIONES)                                               ß
echo ß   1-MENU 01.                                                     ß
echo ß   2-MENU 02.                                                     ß
echo ß   3-SALIR                                                        ß
echo ß                                                                  ß
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
set /p preg01= Que desea hacer? [1,2,3]: 
if %preg01%==1 goto MENU01  
if %preg01%==2 goto MENU02
if %preg01%==3 goto SALIR
goto MENU
pause

:MENU01
cls
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo ß                   MENU 01                                        ß
echo ß   1-ABRIR www.elrincondelc.com EN INTERNET EXPLORER              ß
echo ß   2-REGRESAR.                                                    ß
echo ß   3-SALIR                                                        ß
echo ß                                                                  ß
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
set /p preg02= Que desea hacer? [1,2,3]: 
if %preg02%==1 goto OPENIE  
if %preg02%==2 goto regresar
if %preg02==3 goto SALIR
goto MENU01
PAUSE

:openIE
start iExplore.exe http://www.elrincondelc.com
goto menu01

:regresar
goto menuppl

:MENU02
CLS
:MENU2
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo ß                   MENU 01                                        ß
echo ß   1-ABRIR REGEDIT                                                ß
echo ß   2-REGRESAR.                                                    ß
echo ß   3-SALIR                                                        ß
echo ß                                                                  ß
echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
set /p preg03 Que desea hacer? [1,2,3]: 
if %preg03%==1 goto OPENRG  
if %preg03%==2 goto regresar
if %preg03%==3 goto SALIR
goto MENU02
PAUSE

:OPENRG
START REGEDIT
GOTO MENU02


:SALIR
CLS
EHCHO PROGRAMADO POR PIKA503
ECHO SALIENDO...
PAUSE
EXIT