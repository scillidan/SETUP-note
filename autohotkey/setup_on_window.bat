@echo off

set "HOME=C:\Users\User"

set "AUTOHOTKEY_1_OPT=%HOME%\Opt\AutoHotkey_1"
set "AUTOHOTKEY_2_OPT=%HOME%\Opt\AutoHotkey_2"
set "AUTOHOTKEY_SETUP_NOTE=%HOME%\Github\SETUP-note\autohotkey"
set "AUTOHOTKEY_DL=%HOME%\Download\autohotkey"
set "AUTOHOTKEY_SRC=%HOME%\Source\autohotkey"

del "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini"
del "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk"
del "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini"
mklink "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini" "%AUTOHOTKEY_SETUP_NOTE%\KBLAutoSwitch\KBLAutoSwitch.ini"
mklink /H "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk" "%AUTOHOTKEY_SETUP_NOTE%\AHK-KeyMap\KeyMap_User.ahk"
mklink /H "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini" "%AUTOHOTKEY_SETUP_NOTE%\QuickSwitch\QuickSwitch.ini"

pause