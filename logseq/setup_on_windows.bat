@echo off

rem set HOME=C:\Users\User

set LOGSEQ_CONFIG=%HOME%\.logseq
set LOGSEQ_SETUP_NOTE=%HOME%\Github\SETUP-note\logseq

rmdir /S /Q "%LOGSEQ_CONFIG%"
mklink /J "%LOGSEQ_CONFIG%" "%LOGSEQ_SETUP_NOTE%\logseq"

pause