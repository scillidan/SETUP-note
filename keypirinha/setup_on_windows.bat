@echo off

set "HOME=%HOME%"

set "KEYPIRINHA_OPT=%HOME%\Opt\Keypirinha"
set "KEYPIRINHA_SETUP_NOTE=%HOME%\Github\SETUP-note\keypirinha"
set "KEYPIRINHA_DL=%HOME%\Download\keypirinha"
set "KEYPIRINHA_SRC=%HOME%\Source\keypirinha"

mkdir "%KEYPIRINHA_OPT%\portable\Profile"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\InstalledPackages"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\Packages"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\User"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\InstalledPackages" "%KEYPIRINHA_SETUP_NOTE%\Profile\InstalledPackages"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\Packages" "%KEYPIRINHA_SETUP_NOTE%\Profile\Packages"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\User" "%KEYPIRINHA_SETUP_NOTE%\Profile\User"

rem filebrowser for me

set "FILEBROWSER=%KEYPIRINHA_SETUP_NOTE%\_User\filebrowser"

rmdir /S /Q %FILEBROWSER%
mkdir %FILEBROWSER%

mklink %FILEBROWSER%\user_aliases.cmd %HOME%\Github\SETUP-note\cmder\config\user_aliases.cmd
mklink %FILEBROWSER%\user_profile.cmd %HOME%\Github\SETUP-note\cmder\config\user_profile.cmd
mklink %FILEBROWSER%\setpath.bat %HOME%\Github\SETUP-note\cmder\vendor\setpath.bat
mklink %FILEBROWSER%\AHKExpansionsList_user.ahk %HOME%\Github\SETUP-note_Temp\autohotkey\AHKExpansionsList\AHKExpansionsList_user.ahk
mklink %FILEBROWSER%\QuickSwitch.ini %HOME%\Github\SETUP-note\autohotkey\QuickSwitch\QuickSwitch.ini
mklink /J %FILEBROWSER%\source %HOME%\Github\JUTSU-docset\source

pause