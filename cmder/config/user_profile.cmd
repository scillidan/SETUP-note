:: set "PATH=;%PATH%"
:: %ccall% "/customOption" "command/program"

call "%CMDER_ROOT%\vendor\setpath.bat"
call "%CMDER_ROOT%\bin\fnm_init.cmd"
set "LC_ALL=en_US.utf8%LC_ALL%"
set "LANG=en_US.utf8%LANG%"
set "CHANGE_LOG_NAME=User%CHANGE_LOG_NAME%"
:: set "0.0.0.0=127.0.0.1%0.0.0.0%"
:: set "FAST_REFRESH=true%FAST_REFRESH%"
set "PNPM_HOME=%APPDATA%\pnpm%PNPM_HOME%"
set "NODE_OPTIONS=--max_old_space_size=2048%NODE_OPTIONS%"
:: set "NODE_ENV=development node postcss%NODE_ENV%"
:: set "PUPPETEER_SKIP_DOWNLOAD=true%PUPPETEER_SKIP_DOWNLOAD%"
:: set "PUPPETEER_PRODUCT=firefox npm install%PUPPETEER_PRODUCT%"
set "PUPPETEER_EXECUTABLE_PATH=%LocalAppData%\ms-playwright\chromium-1117\chrome-win\chrome.exe%PUPPETEER_EXECUTABLE_PATH%
set "DENO_INSTALL=%LocalAppData%\deno%DENO_INSTALL%"
set "PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python%PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION%"
:: set "RUSTUP_DIST_SERVER=https://mirror.sjtu.edu.cn/rust-static%RUSTUP_DIST_SERVER%"
:: set "RUSTUP_UPDATE_ROOT=https://mirror.sjtu.edu.cn/rust-static/rustup%RUSTUP_UPDATE_ROOT%"
:: set "RUST_BACKTRACE=full%RUST_BACKTRACE%"
:: set "RUSTFLAGS=--cfg tracing_unstable%RUSTFLAGS%"
set "CARGO_HTTP_CHECK_REVOKE=false%CARGO_HTTP_CHECK_REVOKE%"
set "CARGO_TARGET_DIR=%HOME%\Usr\cargo%CARGO_TARGET_DIR%"
set "GO111MODULE=on%GO111MODULE%"
:: set "GOPROXY='https://goproxy.cn,direct'%GOPROXY%"
:: set "GOROOT=%GOROOT%"
:: set "RBENV_ROOT=C:\Ruby-on-Window%RBENV_ROOT%"
:: set "PYENV=%HOME%\.pyenv\pyenv-win%PYENV%"
:: set "PYENV_HOME=%HOME%\.pyenv\pyenv-win%PYENV_HOME%"
:: set "PYENV_ROOT=%HOME%\.pyenv\pyenv-win%PYENV_ROOT%"
:: set "GH_CONFIG_DIR=C:\Users\User\.config\gh%GH_CONFIG_DIR%"
:: set "LUA_PATH_5_3=%HOME%\Lib\lua53\x64%LUA_PATH_5_3%"
:: set "LUA_CPATH_5_3=%HOME%\Lib\lua53\x64%LUA_CPATH_5_3%"

:: AI-demo
set "HF_MODEL_ROOT=C:\huggingface\model%HF_MODEL_ROOT%"
set "HF_DATASET_ROOT=C:\huggingface\dataset%HF_DATASET_ROOT%"
set "HF_MIRROR=https://huggingface.co%HF_MIRROR%"
set "HF_HUB_ENABLE_HF_TRANSFER=1%HF_HUB_ENABLE_HF_TRANSFER%"
set "NVCC_FLAGS=-allow-unsupported-compiler%NVCC_FLAGS%"
:: set "LD_LIBRARY_PATH=...\TensorRT\8.5.1.7\lib%LD_LIBRARY_PATH%"
set "_use_new_zipfile_serialization=False%_use_new_zipfile_serialization%"

set "FZF_DEFAULT_OPTS=--layout=reverse --info=inline --multi --bind 'ctrl-a:select-all' --bind 'ctrl-e:execute(echo {+} | xargs -o subl)'%FZF_DEFAULT_OPTS%"
set "TESSDATA_PREFIX=%HOME%\Opt\tesseract\tessdata%TESSDATA_PREFIX%"
set "ALASS_FFMPEG_PATH=%HOME%\Opt\ffmpeg\bin\ffmpeg.exe%ALASS_FFMPEG_PATH%"
set "ALASS_FFPROBE_PATH=%HOME%\Opt\ffmpeg\bin\ffprobe.exe%ALASS_FFPROBE_PATH%"

:: API
:: set "TENCENT_SECRET_ID=%TENCENT_SECRET_ID%"
:: set "TENCENT_SECRET_KEY=%TENCENT_SECRET_KEY%"

:: rsync
:: set "CWRSYNCHOME=...%CWRSYNCHOME%"

:: aeneas
:: set "AENEAS_FORCE_CEW=True%AENEAS_FORCE_CEW%"
:: set "AENEAS_FORCE_CFW=True%AENEAS_FORCE_CFW%"

:: rename
:: set "RENAME_EDITOR=subl -w%RENAME_EDITOR%"
:: set "EDITOR=...%EDITOR%"

:: nvim
:: set "VISUAL=subl%VISUAL%"

:: lunarvim
:: set "XDG_DATA_HOME=%APPDATA%%XDG_DATA_HOME%"
:: set "XDG_CONFIG_HOME=C:\Users\User\AppData\Local%XDG_CONFIG_HOME%"
:: set "XDG_CACHE_HOME=%LocalAppData%\Temp%XDG_CACHE_HOME%"
:: set "XDG_RUNTIME_DIR=%LocalAppData%\Temp%XDG_RUNTIME_DIR%"
:: set "LUNARVIM_BASE_DIR=%APPDATA%\lunarvim\lvim%LUNARVIM_BASE_DIR%"
:: set "LUNARVIM_CACHE_DIR=%LocalAppData%\Temp\lvim%LUNARVIM_CACHE_DIR%"
:: set "LUNARVIM_CONFIG_DIR=%LocalAppData%\lvim%LUNARVIM_CONFIG_DIR%"
:: set "LUNARVIM_RUNTIME_DIR=%APPDATA%\lunarvim%LUNARVIM_RUNTIME_DIR%"

:: wim
:: set "PYTHONHOME=%LocalAppData%\Programs\Python\Python39%PYTHONHOME%"
:: set "PYTHONPATH=%LocalAppData%\Programs\Python\Python39\python.exe%PYTHONPATH%"
:: set "PYTHONIOENCODING=UTF-8%PYTHONIOENCODING%"
:: set "DYNAMIC_PYTHON3_DLL=%LocalAppData%\Programs\Python\Python39\python39.dll%DYNAMIC_PYTHON3_DLL%"

@echo off