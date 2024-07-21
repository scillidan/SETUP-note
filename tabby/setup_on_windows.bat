@echo off

rem set HOME=C:\Users\User

set TABBY_DATA=%APPDATA%\tabby
set TABBY_SETUP_NOTE=%HOME%\Github\SETUP-note\tabby

del "%TABBY_DATA%\config.yaml"
mklink "%TABBY_DATA%\config.yaml" "%TABBY_DATA%\config.yaml"

pause