@echo off

    setlocal

    set quit=false
    set /p InputChoices=Enter Choice(s) (A,B,C): 
    echo %InputChoices%
    call :executeChoices %InputChoices%

    endlocal

goto :eof

:executeChoices 

    if [%1]==[] goto :eof

    call :Step%1
    shift
    goto :executeChoices    

goto :eof

:StepA
    echo Step A
goto :eof

:StepB
    echo Step B
goto :eof

:StepC
    echo Step C
goto :eof

pause