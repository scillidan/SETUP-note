@echo off

set "HOME=C:\Users\User"

set "GOLDENDICT_ROOT=%HOME%\Opt\GoldenDict"
set "GOLDENDICT_DATA=%APPDATA%\GoldenDict"
set "GOLDENDICT_SETUP_NOTE=%HOME%\Github\SETUP-note\goldendict"
set "GOLDENDICT_DL=%HOME%\Download\goldendict"
set "GOLDENDICT_SRC=%HOME%\Source\goldendict"

rem Enable Dark Theme

rmdir /S /Q "%GOLDENDICT_ROOT%\extras"
rmdir /S /Q "%GOLDENDICT_ROOT%\icons"
rmdir /S /Q "%GOLDENDICT_DATA%\fonts"
rmdir /S /Q "%GOLDENDICT_DATA%\styles"

mklink /J "%GOLDENDICT_ROOT%\extras" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\extras"
mklink /J "%GOLDENDICT_ROOT%\icons" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\icons"
mklink /J "%GOLDENDICT_DATA%\fonts" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\fonts"
mkdir "%GOLDENDICT_DATA%\styles\Dark"
type "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\article-style.css" "%GOLDENDICT_SETUP_NOTE%\article-style_user.css" > "%GOLDENDICT_DATA%\styles\Dark\article-style.css"
mklink "%GOLDENDICT_DATA%\styles\Dark\qt-style.css" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\qt-style.css"

rem Enable Start-Config

rem del %GOLDENDICT_DATA%\config
rem mklink %GOLDENDICT_DATA%\config %GOLDENDICT_SETUP_NOTE%\config_start

rem Ebable Final-Config

del %GOLDENDICT_DATA%\config
mklink %GOLDENDICT_DATA%\config %GOLDENDICT_SETUP_NOTE%\config

rem Enable GoldenDictOCR

del %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk
del %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk
mklink %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk %GOLDENDICT_SETUP_NOTE%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk
mklink %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk %GOLDENDICT_SETUP_NOTE%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk

pause