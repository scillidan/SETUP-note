rem Add node.exe into PATH

@echo off
cd %*
start http://localhost:4323
"%HOME%\Opt\alacritty\Alacritty.exe" --config-file "%HOME%\Github\SETUP-note\alacritty\alacritty_cmder.toml" --command "%HOME%\AppData\Roaming\pnpm\serve.CMD . -p 4323"