@echo off
title Multiple Choice Menu
:home
cls
echo.
echo Select a task:
echo =============
echo.
echo 1) Open www.mintywhite.com
echo 2) List Temp-files
echo 3) Run IpConfig.exe
echo 4) Run CleanUp.Bat
echo 5) Exit
echo.
set /p web=Type option: 
if "%web%"=="1" start www.mintywhite.com
if "%web%"=="2" goto list
if "%web%"=="3" start ipconfig.exe
if "%web%"=="4" Call cleanup.bat
if "%web%"=="5" exit
goto home
:list
echo Listing files from c:\windows\temp
dir c:\windows\temp /p /b
Pause
goto home