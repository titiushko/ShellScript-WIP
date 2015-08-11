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
for /f %%f in ('tasklist /fi "USERNAME ne NT AUTHORITY\SYSTEM" /fi "USERNAME ne NT AUTHORITY\SERVICIO LOCAL" /fi "USERNAME ne NT AUTHORITY\Servicio de red" /fi "IMAGENAME ne System" /fi "IMAGENAME ne explorer.exe" /fi "IMAGENAME ne dllhost.exe" /fi "IMAGENAME ne dwm.exe" /fi "IMAGENAME ne cmd.exe" /fi "IMAGENAME ne tasklist.exe" /fi "IMAGENAME ne conhost.exe" /fi "IMAGENAME ne bash.exe"') do (
	if /i not %%f==nombre if /i not %%f=========================== taskkill /f /im %%f
)
cmd /c %*"shutdown -%opcion% -f -t 0"
