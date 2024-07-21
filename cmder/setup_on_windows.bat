@echo off

rem set HOME=C:\Users\User

set CMDER_OPT=%HOME%\Opt\cmder_mini
set CMDER_SETUP_NOTE=%HOME%\Github\SETUP-note\cmder
set CMDER_SRC=%HOME%\Source\cmder_sources
set CMDER_DL=%HOME%\Source\cmder_downloads

rmdir /S /Q "%CMDER_OPT%\bin"
rmdir /S /Q "%CMDER_OPT%\vendor\clink"
rmdir /S /Q "%CMDER_OPT%\vendor\clink-completions"
del "%CMDER_OPT%\config\clink_settings"
del "%CMDER_OPT%\config\starship.lua"
del "%CMDER_OPT%\config\user-profile.sh"
del "%CMDER_OPT%\config\user_aliases.cmd"
del "%CMDER_OPT%\config\user_profile.cmd"
del "%CMDER_OPT%\config\user_profile.ps1"
del "%CMDER_OPT%\config\user_prompt.lua"
del "%CMDER_OPT%\vendor\setpath.bat"
del "%CMDER_OPT%\vendor\tere.bat"
del "%CMDER_OPT%\vendor\fzf.lua
del "%CMDER_OPT%\vendor\fuzzy_history.lua
del "%CMDER_OPT%\vendor\zoxide.lua

mklink /J "%CMDER_OPT%\bin" "%CMDER_SETUP_NOTE%\bin"
mklink /J "%CMDER_OPT%\vendor\clink" "%CMDER_SRC%\clink"
mklink /J "%CMDER_OPT%\vendor\clink-completions" "%CMDER_SRC%\clink-completions"
mklink "%CMDER_OPT%\config\clink_settings" "%CMDER_SETUP_NOTE%\config\clink_settings"
mklink "%CMDER_OPT%\config\starship.lua" "%CMDER_SETUP_NOTE%\config\starship.lua"
mklink "%CMDER_OPT%\config\user-profile.sh" "%CMDER_SETUP_NOTE%\config\user-profile.sh"
mklink "%CMDER_OPT%\config\user_aliases.cmd" "%CMDER_SETUP_NOTE%\config\user_aliases.cmd"
mklink "%CMDER_OPT%\config\user_profile.cmd" "%CMDER_SETUP_NOTE%\config\user_profile.cmd"
mklink "%CMDER_OPT%\config\user_profile.ps1" "%CMDER_SETUP_NOTE%\config\user_profile.ps1"
mklink "%CMDER_OPT%\config\user_prompt.lua" "%CMDER_SETUP_NOTE%\config\user_prompt.lua"
mklink "%CMDER_OPT%\vendor\setpath.bat" "%CMDER_SETUP_NOTE%\vendor\setpath.bat"
mklink "%CMDER_OPT%\vendor\tere.bat" "%CMDER_SETUP_NOTE%\vendor\tere.bat"
mklink "%CMDER_OPT%\vendor\fzf.lua" %CMDER_SETUP_NOTE%\vendor\_clink-fzf_fzf.lua"
mklink "%CMDER_OPT%\vendor\fuzzy_history.lua" %CMDER_SRC%\clink-gizmos\fuzzy_history.lua"
mklink "%CMDER_OPT%\vendor\zoxide.lua" %CMDER_SRC%\clink-zoxide\zoxide.lua"
rem mklink "%CMDER_OPT%\vendor\z.cmd" "%CMDER_SRC%\z.lua\z.cmd"
rem mklink "%CMDER_OPT%\vendor\z.lua" "%CMDER_SRC%\z.lua\z.lua"

pause