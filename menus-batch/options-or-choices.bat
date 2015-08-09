@ECHO off
cls
:start
ECHO.
ECHO 1. Print Hello
ECHO 2. Print Bye
ECHO 3. Print Test
set /p choice=Type the number to print text: 
rem if not '%choice%'=='' set choice=%choice:~0;1% ( don`t use this command, because it takes only first digit in the case you type more digits. After that for example choice 23455666 is choice 2 and you get "bye"
if '%choice%'=='' ECHO "%choice%" is not valid please try again
if '%choice%'=='1' goto hello
if '%choice%'=='2' goto bye
if '%choice%'=='3' goto test
ECHO.
goto start
:hello
ECHO HELLO
goto end
:bye
ECHO BYE
goto end
:test
ECHO TEST
goto end
:end
pause
exit