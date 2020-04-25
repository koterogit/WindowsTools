@echo off
setlocal
set selfname=%~xn0

if "%1"=="" (
    goto usage
)

rem ----------
rem main
rem ----------

powershell powershell -ExecutionPolicy Bypass -File %1%

goto end

rem ----------
rem subrootins
rem ----------

:usage
echo [Usage]
echo %selfname% hoge.ps1
goto end

:end
pause
exit
