@echo off

:init
set /p option=(1) Enable (2) Disable: 

if not defined option goto init
if %option%==1 goto option1
if %option%==2 goto option2
goto init

:option1
set config=enable
goto compile

:option2
set config=disable
goto compile

:compile
netsh interface set interface "Wi-Fi" admin=%config%

pause
