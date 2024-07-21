@echo off

rem set HOME=C:\Users\User

set QUITERSS_OPT=%HOME%\Opt\QuiteRSS
set QUITERSS_SETUP_NOTE=%HOME%\Github\SETUP-note\quiterss

del "%QUITERSS_DATA%\QuiteRss.ini"
mklink "%QUITERSS_DATA%\QuiteRss.ini" "%QUITERSS_SETUP_NOTE%\QuiteRss.ini"

pause