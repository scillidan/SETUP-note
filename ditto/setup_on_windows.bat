@echo off

set "HOME=C:\Users\User"

set "DITTO_OPT=%HOME%\Opt\Ditto"
set "DITTO_SETUP_NOTE=%HOME%\Github\SETUP-note\ditto"

del "%DITTO_OPT%\Ditto.Settings"
mklink "%DITTO_OPT%\Ditto.Settings" "%DITTO_SETUP_NOTE%\Ditto.Settings"

pause