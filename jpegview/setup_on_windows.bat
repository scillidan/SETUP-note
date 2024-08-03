@echo off

set "HOME=C:\Users\User"

set "JPEGVIEW_OPT=%HOME%\Opt\JPEGView"
set "JPEGVIEW_SETUP_NOTE=%HOME%\Github\SETUP-note\jpegview"

del "%JPEGVIEW_OPT%\JPEGView.ini"
mklink "%JPEGVIEW_OPT%\JPEGView.ini" "%JPEGVIEW_SETUP_NOTE%\JPEGView.ini"

pause