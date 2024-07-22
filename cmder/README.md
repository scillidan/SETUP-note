## Install

```sh
set "HOME=C:/Users/User"
```

```sh
mkdir "%HOME%/Source/cmder_downloads"
```

1. Download `ConEmuPack*.7z` from Releases fo [ConEmu](https://github.com/Maximus5/ConEmu).
2. Decompress it to `ConEmu\`.

```sh
mkdir "%HOME%/Source/cmder_sources"
cd "%HOME%/Source/cmder_sources"
git clone --depth=1 https://github.com/chrisant996/clink-fzf
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
git clone --depth=1 https://github.com/chrisant996/clink
git clone --depth=1 https://github.com/vladimir-kotikov/clink-completions
```

For `.lua` scripts:

1. Download `lua-5.3*.zip` from [lua53 (build for Windows)](https://github.com/alain-riedinger/lua53).
2. Unzip it.
3. Add `lua53\x64\bin`, `lua53\x64\lib` into `PATH`.