@echo off

set "HOME=C:\Users\User"

set "CYGWIN_OPT=C:\cygwin64"
set "CYGWIN_HOME=%CYGWIN_OPT%\home\User"
set "CYGWIN_SETUP_NOTE=%HOME%\Github\SETUP-note\cygwin"

del "%CYGWIN_HOME%\.bashrc"
del "%CYGWIN_HOME%\.zshrc"
copy "%CYGWIN_SETUP_NOTE%\.bashrc" "%CYGWIN_SETUP_NOTE%\.bashrc_backup"
copy "%CYGWIN_SETUP_NOTE%\.zshrc" "%CYGWIN_SETUP_NOTE%\.zshrc_backup"
mklink "%CYGWIN_HOME%\.bashrc" "%CYGWIN_SETUP_NOTE%\.bashrc"
mklink "%CYGWIN_HOME%\.zshrc" "%CYGWIN_SETUP_NOTE%\.zshrc"

pause