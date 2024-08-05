@echo off

set "HOME=C:\Users\User"

set "OMIOCR_SETUP_NOTE=%HOME%\Github\SETUP-note\omi-ocr"

set "OMIOCR_RAPID_OPT=%HOME%\Opt\Umi-OCR_Rapid"
del "%OMIOCR_RAPID_OPT%\UmiOCR-data\.settings"
mklink "%OMIOCR_RAPID_OPT%\UmiOCR-data\.settings" "%OMIOCR_SETUP_NOTE%\_Rapid\.settings"

set "OMIOCR_PADDLE_OPT=%HOME%\Opt\Umi-OCR_Paddle"
del "%OMIOCR_PADDLE_OPT%\UmiOCR-data\.settings"
mklink "%OMIOCR_PADDLE_OPT%\UmiOCR-data\.settings" "%OMIOCR_SETUP_NOTE%\_Paddle\.settings"

pause