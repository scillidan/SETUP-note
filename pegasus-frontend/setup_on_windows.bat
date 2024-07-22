@echo off

set "HOME=C:\Users\User"

set "PEGASUS_OPT=%HOME%\Opt\pegasus-fe"
set "RETROARCH_OPT=%HOME%\Opt\RetroArch"
set "PEGASUS_SETUP_NOTE=%HOME%\Github\SETUP-note\pegasus-frontend"
set "PEGASUS_SRC=%HOME%\Source\pegasus_sources"
set "PEGASUS_DL=%HOME%\Source\pegasus_downloads"

rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch"
rem mklink /J "%PEGASUS_OPT%\RetroArch" "%RETROARCH_OPT%"
rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch\cheats"
rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch\config"
rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch\cores"
rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch\downloads"
rem rmdir /S /Q "%PEGASUS_OPT%\RetroArch\system"
rem mklink /J "%PEGASUS_OPT%\RetroArch\cheats" "%PEGASUS_DL%\pegasus-g\RetroArch\cheats"
rem mklink /J "%PEGASUS_OPT%\RetroArch\config" "%PEGASUS_DL%\pegasus-g\RetroArch\config"
rem mklink /J "%PEGASUS_OPT%\RetroArch\cores" "%PEGASUS_DL%\pegasus-g\RetroArch\cores"
rem mklink /J "%PEGASUS_OPT%\RetroArch\downloads" "%PEGASUS_DL%\pegasus-g\RetroArch\downloads"
rem mklink /J "%PEGASUS_OPT%\RetroArch\system" "%PEGASUS_DL%\pegasus-g\RetroArch\system"

rmdir /S /Q "%RETROARCH_OPT%\RetroArch\cheats"
rmdir /S /Q "%RETROARCH_OPT%\RetroArch\config"
rmdir /S /Q "%RETROARCH_OPT%\RetroArch\cores"
rmdir /S /Q "%RETROARCH_OPT%\RetroArch\downloads"
rmdir /S /Q "%RETROARCH_OPT%\RetroArch\system"
mklink /J "%RETROARCH_OPT%\RetroArch\cheats" "%PEGASUS_DL%\pegasus-g\RetroArch\cheats"
mklink /J "%RETROARCH_OPT%\RetroArch\config" "%PEGASUS_DL%\pegasus-g\RetroArch\config"
mklink /J "%RETROARCH_OPT%\RetroArch\cores" "%PEGASUS_DL%\pegasus-g\RetroArch\cores"
mklink /J "%RETROARCH_OPT%\RetroArch\downloads" "%PEGASUS_DL%\pegasus-g\RetroArch\downloads"
mklink /J "%RETROARCH_OPT%\RetroArch\system" "%PEGASUS_DL%\pegasus-g\RetroArch\system"

rmdir /S /Q "%PEGASUS_OPT%\config"
mkdir "%PEGASUS_OPT%\config"
mklink "%PEGASUS_OPT%\config\game_dirs.txt" "%PEGASUS_SETUP_NOTE%\config\game_dirs.txt"
mklink "%PEGASUS_OPT%\config\settings.txt" "%PEGASUS_SETUP_NOTE%\config\settings.txt"
mkdir "%PEGASUS_OPT%\config\themes"
for /d %%i in (%PEGASUS_SRC%\*) do mklink /J "%PEGASUS_OPT%\config\themes\%%~nxi" "%%i"

rmdir /S /Q "%PEGASUS_OPT%\Roms"
mklink /D "%PEGASUS_OPT%\Roms" "%PEGASUS_DL%\pegasus-g\Roms"
for /r "%PEGASUS_OPT%\Roms" %%f in (metadata.pegasus.txt) do (
    del "%%f"
)
for /d %%d in ("%PEGASUS_OPT%\Roms\*") do (
    if exist "%PEGASUS_SETUP_NOTE%\metadata\%%~nxd\metadata.pegasus.txt" (
        mklink "%%d\metadata.pegasus.txt" "%PEGASUS_SETUP_NOTE%\metadata\%%~nxd\metadata.pegasus.txt"
    )
)

rem mkdir "%RETROARCH_OPT%\Emulators"

pause