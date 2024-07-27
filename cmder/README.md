## Install

```sh
set "HOME=C:/Users/User"
```

```sh
mkdir "%HOME%/Download/cmder"
cd "%HOME%/Download/cmder"
```

1. Download `ConEmuPack*.7z` from Releases fo [ConEmu](https://github.com/Maximus5/ConEmu).
2. Decompress it to `ConEmu/`.
3. Download `clink*.zip` from Releases fo [clink](https://github.com/chrisant996/clink).
4. Decompress it to `clink/`.

```sh
mkdir "%HOME%/Source/cmder"
cd "%HOME%/Source/cmder"
git clone --depth=1 https://github.com/chrisant996/clink-fzf
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
git clone --depth=1 https://github.com/vladimir-kotikov/clink-completions
```

For `.lua` scripts:

1. Download `lua-5.3*.zip` from [lua53 (build for Windows)](https://github.com/alain-riedinger/lua53).
2. Unzip it.
3. Add `lua53\x64\bin`, `lua53\x64\lib` into `PATH`.

Cmder → Settings → Import → `_User\ConEmu.xml`.