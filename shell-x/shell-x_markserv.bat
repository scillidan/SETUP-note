@echo off
cd %*
open-cli http://localhost:8642
"%HOME%\Opt\alacritty\Alacritty.exe" --config-file "C:\Users\User\Github\SETUP-note\alacritty\alacritty_cmder.toml" --command "C:\Users\User\AppData\Roaming\pnpm\markserv.CMD ."