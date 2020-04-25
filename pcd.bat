@echo off

set PCD_CONFIG=%USERPROFILE%\.pcd

if "%1" equ "add" (
  if "%2" neq "" (
    echo %2>> %PCD_CONFIG%
    goto end
  )
  goto usage
)
if "%1" equ "edit" (
  goto edit
)
if "%1" neq "" (
  goto usage
)
goto query

:usage
echo %0 [add PATH ^| edit]
goto end

:edit
if "%EDITOR%" neq "" (
  "%EDITOR%" %PCD_CONFIG%
  goto end
)
notepad %PCD_CONFIG%
goto end

:query
rem NOTE:
rem
rem Shift-JIS
for /f "tokens=*" %%i in ('type ^"%PCD_CONFIG%^" ^| iconv -f char -t utf-8 ^| peco --null') do (

rem utf-8
rem for /f "tokens=*" %%i in ('type ^"%PCD_CONFIG%^" ^| peco') do (
  pushd %%i
  break
)

:end
