@echo off

rem set the location/path of the tere executable here...
SET TereEXE=%HOME%\Bin\tere\tere.exe

FOR /F "tokens=*" %%a in ('%TereEXE% %*') do SET OUTPUT=%%a
IF ["%OUTPUT%"] == [""] goto :EOF
cd %OUTPUT%