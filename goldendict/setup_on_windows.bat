@echo off

rem set HOME=C:\Users\User

set GD_HOME=%HOME%\Opt\GoldenDict
set GD_DATA=%APPDATA%\GoldenDict
set GD_SETUP_NOTE=%HOME%\Github\SETUP-note\goldendict
set GD_SRC=%HOME%\Source\goldendict_sources
set GD_DL=%HOME%\Source\goldendict_downloads

rmdir "%GD_HOME%\extras"
rmdir "%GD_HOME%\icons"
rmdir "%GD_DATA%\fonts"
rmdir /S /Q "%GD_DATA%\styles"

mklink /J "%GD_HOME%\extras" "%GD_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\extras"
mklink /J "%GD_HOME%\icons" "%GD_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\icons"
mklink /J "%GD_DATA%\fonts" "%GD_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\fonts"
mkdir "%GD_DATA%\styles\Dark"
type "%GD_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\article-style.css" "%GD_SETUP_NOTE%\article-style_user.css" > "%GD_DATA%\styles\Dark\article-style.css"
mklink "%GD_DATA%\styles\Dark\qt-style.css" "%GD_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\qt-style.css"

pause