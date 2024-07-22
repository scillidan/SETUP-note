@echo off

set "HOME=C:\Users\User"

set "PIP_DATA=%APPDATA%\pip"
set "PYTHON_SETUP_NOTE=%HOME%\Github\SETUP-note\python"

rmdir /S /Q "%PIP_DATA%"
mklink /D "%PIP_DATA%" "%PYTHON_SETUP_NOTE%\pip"

pause