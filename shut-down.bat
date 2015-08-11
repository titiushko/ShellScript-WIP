@echo off
@setlocal
:inicio
set /p opcion=(S)hutdown or (R)estart? 
if not defined opcion goto inicio
if %opcion%==S goto continuar
if %opcion%==s goto continuar
if %opcion%==R goto continuar
if %opcion%==r goto continuar
goto inicio
:continuar
cmd /c %*"shutdown -%opcion% -f -t 0"
