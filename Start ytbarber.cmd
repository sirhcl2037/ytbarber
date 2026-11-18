@echo off
setlocal
pushd "%~dp0" || exit /b 1
call npm.cmd start
set "ytbarber_exit=%errorlevel%"
popd
if not "%ytbarber_exit%"=="0" pause
exit /b %ytbarber_exit%
