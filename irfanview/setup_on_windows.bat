@echo off

set "HOME=C:\Users\User"

set "IRFANVIEW_OPT=%HOME%\Opt\iview"
set "IRFANVIEW_SETUP_NOTE=%HOME%\Github\SETUP-note\irfanview"

del "%IRFANVIEW_OPT%\i_view64.ini"
mklink "%IRFANVIEW_OPT%\i_view64.ini" "%IRFANVIEW_SETUP_NOTE%\i_view64.ini"

pause