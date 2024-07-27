@echo off

set "HOME=C:\Users\User"

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

pause