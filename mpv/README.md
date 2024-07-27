## Install on Windows (TBD)

```sh
set "HOME=C:/Users/User"
```

```sh
mkdir "%HOME%/Opt"
cd "%HOME%/Opt"
```

1. Download `mpv-x86_64-****.7z` (Not `v3`) from [mpv-winbuild]https://github.com/zhongfly/mpv-winbuild). If you want to know what `v3` here means, see `https://www.reddit.com/r/mpv/comments/1bevggz/mpv_vs_mpvv3/`.
2. Decompress it to `mpv/`

```sh
mkdir "%HOME%/Download/mpv"
cd "%HOME%/Download/mpv"
```

- Download `uosc.conf`, `uosc.zip` from [uosc](https://github.com/tomasklaen/uosc)
- Download release from [mpv handler](https://github.com/akiirui/mpv-handler)
- Download release from [mpv Picture-in-Picture](https://github.com/verygoodlee/mpv-pip)

Decompress to:

```
uosc/
mpv-handler/
mpv-pip/
```

In Install all `fonts` under `uosc/fonts/`.
In `mpv-handler/`, run `handler-install.bat` as `Administrator`.

```sh
mkdir "%HOME%/Source/mpv"
cd "%HOME%/Source/mpv"
```

```sh
git clone --depth=1 https://github.com/po5/evafast
git clone --depth=1 https://github.com/natural-harmonia-gropius/hdr-toys
git clone --depth=1 https://github.com/natural-harmonia-gropius/input-event
git clone --depth=1 https://github.com/po5/memo
git clone --depth=1 https://github.com/mpv-player/mpv
git clone --depth=1 https://github.com/zxhzxhz/mpv-chapters
git clone --depth=1 https://github.com/ento/mpv-cheatsheet
git clone --depth=1 https://github.com/jonniek/mpv-filenavigator
git clone --depth=1 https://github.com/occivink/mpv-gallery-view
git clone --depth=1 https://github.com/occivink/mpv-image-viewer
git clone --depth=1 https://github.com/thinkmcflythink/mpv-loudnorm
git clone --depth=1 https://github.com/dudemanguy/mpv-manga-reader
git clone --depth=1 https://github.com/jonniek/mpv-nextfile
git clone --depth=1 https://github.com/jonniek/mpv-playlistmanager
git clone --depth=1 https://github.com/christoph-heinrich/mpv-quality-menu
git clone --depth=1 https://github.com/cogentredtester/mpv-scripts mpv-scripts@cogentredtester
git clone --depth=1 https://github.com/jonniek/mpv-scripts mpv-scripts@jonniek
git clone --depth=1 https://github.com/stax76/mpv-scripts mpv-scripts@stax76
git clone --depth=1 https://github.com/zenyd/mpv-scripts mpv-scripts@zenyd
git clone --depth=1 https://github.com/ben-kerman/mpv-sub-scripts
git clone --depth=1 https://github.com/christoph-heinrich/mpv-subtitle-lines
git clone --depth=1 https://github.com/naiveinvestigator/save-playlist
git clone --depth=1 https://github.com/po5/thumbfast
git clone --depth=1 https://github.com/jonniek/unseen-playlistmaker
git clone --depth=1 https://github.com/mrxdst/webtorrent-mpv-hook
```

## Test

```sh
test_on_windows.bat
```

```sh
m.bat video <File>
m.bat music <File>
...
```

## Setup

On Windows10, run as Administrator:

```sh
setup_env.bat
setup_on_windows.bat
```

Set mpv default config:

```sh
set_default_config_on_windows.bat
```