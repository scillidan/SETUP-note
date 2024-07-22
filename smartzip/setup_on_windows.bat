@echo off

set "HOME=C:\Users\User"

set "SMARTZIP_OPT=%HOME%\Opt\SmartZip"
set "SMARTZIP_SETUP_NOTE=%HOME%\Github\SETUP-note\smartzip"

del "%SMARTZIP_OPT%\SmartZip.ini"
mklink "%SMARTZIP_OPT%\SmartZip.ini" "%SMARTZIP_SETUP_NOTE%\SmartZip.ini"

pause