rem Add node.exe into PATH

@echo off
cd %*
open-cli http://localhost:8642
"%HOME%\Opt\alacritty\Alacritty.exe" --config-file "%HOME%\Github\SETUP-note\alacritty\alacritty_cmder.toml" --command "%HOME%\AppData\Roaming\pnpm\markserv.CMD ."