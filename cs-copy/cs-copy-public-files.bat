@echo off

set date=%date:~3,2%-%date:~0,2%-%date:~6,4%
set source_path="F:\tito.miguel\repositorios\contractstandards\ContractStandards\CS\CS"
set out_path="D:\CS"

if not exist %out_path%\nul goto continue

rd %out_path% /S /Q

:continue

echo date: %date%
echo source path: %source_path%
echo out path: %out_path%

xcopy %source_path% %out_path% /S /I /Y /D:%date% /EXCLUDE:cs-ignore-files.txt

pause
