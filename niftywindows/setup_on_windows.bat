@echo off

set "HOME=C:\Users\User"

set "NIFTYWINDOWS_OPT=%HOME%\Opt\niftywindows"
set "NIFTYWINDOWS_SETUP_NOTE=%HOME%\Github\SETUP-note\niftywindows"

del "%NIFTYWINDOWS_OPT%\niftywindows\NiftyWindows.ini"
mklink "%NIFTYWINDOWS_OPT%\niftywindows\NiftyWindows.ini" "%NIFTYWINDOWS_SETUP_NOTE%\niftywindows\NiftyWindows.ini"

pause