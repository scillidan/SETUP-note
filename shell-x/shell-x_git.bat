@echo off
setlocal EnableDelayedExpansion

REM Read URL from clipboard
for /f "usebackq delims=" %%G in (`powershell -command "Get-Clipboard"`) do set "url=%%G"

REM Clone the repository
git clone %url%

REM Check if the clone operation was successful
if %errorlevel% equ 0 (
    echo Clone successful!
) else (
    echo Clone failed!
)

pause
