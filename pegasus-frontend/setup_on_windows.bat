@echo off

set DL="D:\srcr\pegasus_downloads"
set PEGASUS="%DL%\pegasus-fe"
set PEGASUS_G="%DL%\pegasus-g"
set RETROARCH="%DL%\RetroArch"

rmdir "%RETROARCH%\cheats"
rmdir "%RETROARCH%\config"
rmdir "%RETROARCH%\cores"
rmdir "%RETROARCH%\downloads"
rmdir "%RETROARCH%\system"
mklink /J "%PEGASUS_G%\RetroArch\cheats" "%RETROARCH%\cheats"
mklink /J "%PEGASUS_G%\RetroArch\config" "%RETROARCH%\config"
mklink /J "%PEGASUS_G%\RetroArch\cores" "%RETROARCH%\cores"
mklink /J "%PEGASUS_G%\RetroArch\downloads" "%RETROARCH%\downloads"
mklink /J "%PEGASUS_G%\RetroArch\system" "%RETROARCH%\system"

rmdir "%PEGASUS%\Roms"
mklink /J "%PEGASUS_G%\Roms" "%PEGASUS%\Roms"
for /d %%D in ("%PEGASUS_G%\Roms\*") do (
    set FILE_PATH=%%D\metadata.pegasus.txt
    if exist "%FILE_PATH%" (
        del "%FILE_PATH%"
        echo Deleted file: %FILE_PATH%
    )
)
copy -r "%PEGASUS_G%\playlists\**" "%PEGASUS%\Roms\"

rmdir "%PEGASUS%\config"
mkdir "%PEGASUS%\config"
mklink "%PEGASUS_G%\config\game_dirs.txt" "%PEGASUS%\config\game_dirs.txt"
mklink "%PEGASUS_G%\config\settings.txt" "%PEGASUS%\config\settings.txt"
mklink /J "%PEGASUS_G%\themes" "%PEGASUS%\config\theme_settings"

rem mkdir "%PEGASUS%\Emulators"

pause