@echo off

set "HOME=C:\Users\User"

set "OBSIDIAN_SETUP_NOTE=%HOME%\Github\SETUP-note\obsidian"
set "OBSIDIAN_DL=%HOME%\Download\obsidian"
set "OBSIDIAN_SRC=%HOME%\Source\obsidian"
rem Change this, Set OBSIDIAN_WRITE to your write folder.
set "OBSIDIAN_WRITE_1=%HOME%\Github\YAFA-site\docs"
set "OBSIDIAN_WRITE_2=%HOME%\Github\GM-demo"

del "%OBSIDIAN_SETUP_NOTE%\Config\snippets\themes.css"
rmdir /S /Q %HOME%\Github\YAFA-site\docs\.obsidian
rmdir /S /Q %HOME%\Github\GM-demo\.obsidian

copy "%OBSIDIAN_SRC%\flexoki-obsidian\theme.css" "%OBSIDIAN_SETUP_NOTE%\Config\snippets\themes.css"
mklink /J "%OBSIDIAN_WRITE_1%\.obsidian" "%OBSIDIAN_SETUP_NOTE%\Config"
mklink /J "%OBSIDIAN_WRITE_2%\.obsidian" "%OBSIDIAN_SETUP_NOTE%\Config"

pause