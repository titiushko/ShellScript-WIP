@echo off
:top
echo.|date|find "%1" >nul
if not errorlevel 1 goto %1
shift
goto top
:Sun
echo                                  Today is Sunday  > c:\temp\~finday.tmp
goto end
:Mon
echo                                  Today is Monday  > c:\temp\~finday.tmp
goto end
:Tue
echo                                  Today is Tuesday > c:\temp\~finday.tmp
goto end
:Wed
echo                                  Today is Wednesday > c:\temp\~finday.tmp 
goto end
:Thu
echo                                  Today is Thursday  > c:\temp\~finday.tmp
goto end
:Fri
echo                                  Today is Friday > c:\temp\~finday.tmp
goto end
:Sat
echo                                  Today is Saturday > c:\temp\~finday.tmp
:end
