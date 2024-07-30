@echo off

set "HOME=C:\Users\User"

set "NIFTYWINDOWS_OPT=%HOME%\Opt\NiftyWindows"
set "NIFTYWINDOWS_SETUP_NOTE=%HOME%\Github\SETUP-note\niftywindows"

del "%NIFTYWINDOWS_OPT%\NiftyWindows.ini"
mklink "%NIFTYWINDOWS_OPT%\NiftyWindows.ini" "%NIFTYWINDOWS_SETUP_NOTE%\NiftyWindows.ini"

pause