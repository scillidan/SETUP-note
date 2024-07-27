@echo off

set "HOME=C:\Users\User"

set "SHELLX_DATA=%APPDATA%\shell-x"
set "SHELLX_SETUP_NOTE=%HOME%\Github\SETUP-note\shell-x"

del "%SHELLX_DATA%\[any]\*.cmd"
del "%SHELLX_DATA%\[any]\*.bat"
del "%SHELLX_DATA%\[any]\*.ico"

for %%F in ("%SHELLX_SETUP_NOTE%\[any]\*.cmd", "%SHELLX_SETUP_NOTE%\[any]\*.bat" ), do (
    mklink "%SHELLX_DATA%\[any]\%%~nxF" "%%F"
    mklink "%SHELLX_DATA%\[any]\%%~nF.ico" "%HOME%\Github\ASSET-demo\low-line\ico\darkTheme_cmd.ico"
)

pause