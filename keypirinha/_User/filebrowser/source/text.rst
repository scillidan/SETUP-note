Text
====

.. option:: neovide nvim

	``neovide --size=1250x750 --frame none --no-tabs --neovim-bin nvim.exe -- -u ".../init.lua" $*``

.. option:: neovide lvim

	``neovide --neovim-bin nvim.exe --geometry 100x30 --notabs --frame none -- -u "%LUNARVIM_BASE_DIR%\init.lua" $*``

.. option:: neovide lvim wsl

	``neovide --neovim-bin W:\home\YourName\bin\nvim --geometry 100x30 --notabs --frame none -- -u "W:\home\YourName\.local\share\lunarvim\lvim\init.lua" $*``

.. option:: pipe-rename

	``set EDITOR=.../bob/nvim-bin/nvim.exe && alacritty --config-file "alacritty_config.yml" --command "renamer.exe --yes *"``

.. option:: mdict

	``mdict -x $1 --exdb -d ./_db``

	``mdict -x $1 -d ./_mdx``

.. option:: rga

	``rga $1 -g "*.epub"``