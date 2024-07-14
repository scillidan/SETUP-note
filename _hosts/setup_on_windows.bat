@echo off

set HOSTS=C:\Users\User\Github\SETUP-note\_hosts
set WIN_HOSTS=C:\Windows\System32\drivers\etc

copy "%HOSTS%\hosts_for_windows" "%HOSTS%\hosts_for_windows_bak"
del "%WIN_HOSTS%\hosts"
mklink "%WIN_HOSTS%\hosts" "%HOSTS%\hosts_for_windows_bak"

ipconfig /flushdns

pause