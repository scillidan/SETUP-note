@echo off

rem set HOME=C:\Users\User

set BROOT_DATA=%APPDATA%\dystroy\broot\config
set BROOT_SETUP_NOTE=%HOME%\Github\SETUP-note\broot

del "%BROOT_DATA%\conf.hjson"
mklink "%BROOT_DATA%\conf.hjson" "%BROOT_SETUP_NOTE%\conf.hjson"

pause