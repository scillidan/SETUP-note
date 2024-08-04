@echo off

call %~dp0\set_env.bat

set "CONFIG_DIR_ALL=%CONFIG_DIR_GLOBAL% %CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_EDIT% %CONFIG_DIR_MUSIC% %CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_DIR_ALL%) do (
    rmdir /S /Q "%%d"
    mkdir "%%d"
    mkdir "%%d\%SD%"
    mkdir "%%d\%SOD%"
    mkdir "%%d\%SMD%"
)

type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\video.conf" "%INCLD%\_watch-later.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_VIDEO%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLD%\_hdr.conf" "%INCLD%\video.conf" "%INCLD%\stream.conf" "%INCLD%\_watch-later.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_STREAM%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\music.conf" "%INCLD%\_lyric.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_MUSIC%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLD%\_hdr.conf" "%INCLD%\manga.conf" "%INCLD%\_watch-later.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_MANGA%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\video.conf" "%INCLD%\_watch-later.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_EDIT%\mpv.conf"

type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\video.conf" > "%CONFIG_DIR_VIDEO%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\stream.conf" > "%CONFIG_DIR_STREAM%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\music.conf" > "%CONFIG_DIR_MUSIC%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\manga.conf" > "%CONFIG_DIR_MANGA%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\edit.conf" > "%CONFIG_DIR_EDIT%\input.conf"

rmdir /S /Q "%MPV_CONFIG%\real_loudnorm"

set "CONFIG_GLOBAL=%CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_MUSIC% %CONFIG_DIR_MANGA% %CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_GLOBAL%) do (
    mklink /J "%%d\%INCLD%" "%MPV_SETUP_NOTE%\%INCLD%"
    mklink "%%d\scripts\show-errors.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\show-errors.lua"
)

set "CONFIG_SHADER=%CONFIG_DIR_VIDEO%"

for %%d in (%CONFIG_SHADER%) do (
    mklink "%%d\%SD%\hdr-toys-helper.lua" "%MPV_SRC%\hdr-toys\scripts\hdr-toys-helper.lua"
    type "%MPV_SRC%\hdr-toys\hdr-toys.conf" >> "%%d\mpv.conf"
    mklink /J "%%d\shaders" "%MPV_SRC%\hdr-toys\shaders"
)

set "CONFIG_VIDEO=%CONFIG_DIR_VIDEO% %CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_VIDEO%) do (
    mklink /J "%%d\%SD%\uosc" "%MPV_DL%\uosc\scripts\uosc"
    type "%MPV_DL%\uosc.conf" > "%%d\%SOD%\uosc.conf"
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_video.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\pip.lua" "%MPV_SRC%\mpv-pip\pip.lua"
    rem mklink "%%d\%SD%\pip_example.conf" "%MPV_SRC%\mpv-pip\pip.conf"
    mklink "%%d\%SOD%\pip.conf" "%SSOD%\pip.conf"
    mklink "%%d\%SD%\memo.lua" "%MPV_SRC%\memo\memo.lua"
    type "%MPV_SRC%\memo\memo.conf" "%INCLOD%\memo.conf" > "%%d\%SOD%\memo.conf"
    rem mklink "%%d\%SD%\unseen-playlistmaker.lua" "%MPV_SRC%\unseen-playlistmaker\unseen-playlistmaker.lua"
    mklink "%%d\%SD%\unseen-playlistmaker.lua" "%SSD%\unseen-playlistmaker.lua"
    mklink "%%d\%SD%\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    mklink "%%d\%SD%\evafast.lua" "%MPV_SRC%\evafast\evafast.lua"
    rem mklink "%%d\%SOD%\evafast_example.conf" "%MPV_SRC%\evafast\evafast.conf"
    rem mklink "%%d\%SOD%\evafast.conf" "%SSOD%\evafast.conf"
    mklink "%%d\%SD%\thumbfast.lua" "%MPV_SRC%\thumbfast\thumbfast.lua"
    mklink "%%d\%SOD%\thumbfast.conf" "%MPV_SRC%\thumbfast\thumbfast.conf"
    mklink "%%d\%SD%\ontop-playback.lua" "%MPV_SRC%\mpv\TOOLS\lua\ontop-playback.lua"
    rem mklink "%%d\%SD%\pip.lua" "%SSD%\pip.lua"
    mklink "%%d\%SD%\delete_file.lua" "%MPV_SRC%\mpv-scripts@zenyd\delete_file.lua"
    mklink "%%d\%SD%\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    mklink "%%d\%SD%\nextfile.lua" "%MPV_SRC%\mpv-nextfile\nextfile.lua"
    mklink "%%d\%SD%\rememeber-voluma.lua" "%MPV_SRC%\remember-volume.lua\rememeber-voluma.lua"
    mklink /J "%%d\%SD%\real_loudnorm" "%MPV_SRC%\mpv-loudnorm"
    rem mklink "%%d\%SD%\find_subtitles.lua" "%MPV_SRC%\find_subtitles\find_subtitles.lua"
    mklink "%%d\%SD%\find_subtitles.lua" "%SSD%\find_subtitles.lua"
)

set "CONFIG_STREAM=%CONFIG_DIR_STREAM%"

for %%d in (%CONFIG_STREAM%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_stream.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\progressbar.lua" "%MPV_DL%\progressbar-2024.06.19.0.lua"
    rem mklink "%%d\%SOD%\torque-progressbar.conf" "%MPV_SRC%\torque-progressbar.conf"
    mklink "%%d\%SOD%\torque-progressbar.conf" "%SSOD%\torque-progressbar.conf"
    mklink "%%d\%SD%\quality-menu-osc.lua" "%MPV_SRC%\mpv-quality-menu\quality-menu-osc.lua"
    mklink "%%d\%SOD%\quality-menu.conf" "%MPV_SRC%\mpv-quality-menu\quality-menu.conf"
    mklink "%%d\%SD%\appendURL.lua" "%MPV_SRC%\mpv-scripts@jonniek\appendURL.lua"
    mklink "%%d\%SD%\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\%SD%\webtorrent.js" "%HOME\.local\share\pnpm\webtorrent-mpv-hook\build\webtorrent.js"
    mklink "%%d\%SOD%\webtorrent.conf" "%SSOD%\webtorrent.conf"
    mklink "%%d\%SD%\navigator.lua" "%SSD%\navigator.lua"
)

set "CONFIG_MUSIC=%CONFIG_DIR_MUSIC%"

for %%d in (%CONFIG_MUSIC%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_music.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    rem mklink "%%d\%SD%\pip.lua" "%MPV_DL%\mpv-pip\pip.lua"
    rem mklink "%%d\%SD%\pip_example.conf" "%MPV_DL%\mpv-pip\pip.conf"
    rem mklink "%%d\%SOD%\pip.conf" "%SSOD%\pip.conf"
    mklink "%%d\%SD%\pip.lua" "%SSD%\pip.lua"
    mklink "%%d\%SD%\remember_audio_geometry.lua" "%MPV_SRC%\remember_audio_geometry\remember_audio_geometry.lua"
    rem mklink "%%d\%SD%\navigator.lua" "%MPV_SRC%\mpv-filenavigator\navigator.lua"
    rem mklink "%%d\%SD%\navigator_example.conf" "%MPV_SRC%\mpv-filenavigator\navigator.conf"
    rem mklink "%%d\%SOD%\navigator.conf" "%SSOD%\navigator.conf"
    rem But the navigator.conf don't work. See https://github.com/jonniek/mpv-filenavigator/issues/17
    mklink "%%d\%SD%\navigator.lua" "%SSD%\navigator.lua"
    mklink "%%d\%SD%\playlistmanager.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    rem mklink "%%d\%SD%\playlistmanager_example.conf" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf"
    mklink "%%d\%SD%\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    mklink "%%d\%SOD%\playlistmanager.conf" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf"
    mklink "%%d\%SD%\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\%SD%\save-playlist.lua" "%MPV_SRC%\save-playlist\save-playlist.lua"
    rem mklink "%%d\%SD%\average_volume.lua" "%MPV_SRC%mpv-scripts@stax76\average_volume.lua"
    mklink "%%d\%SD%\average_volume.lua" "%MPV_SRC%\mpv-scripts_stax76\average_volume.lua"
    mklink "%%d\%SD%\dualsubtitles.lua" "%MPV_SRC%\mpv-dualsubtitles\dualsubtitles.lua"
    mklink "%%d\%SOD%\dualsubtitles.conf" "%SSOD%\dualsubtitles.conf"
)

set "CONFIG_MANGA=%CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_MANGA%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_manga.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\gallery-thumbgen.lua" "%MPV_SRC%\mpv-gallery-view\scripts\gallery-thumbgen.lua"
    mklink "%%d\%SMD%\gallery.lua" "%MPV_SRC%\mpv-gallery-view\script-modules\gallery.lua"
    mklink "%%d\%SD%\playlist-view.lua" "%SSD%\playlist-view.lua"
    mklink "%%d\%SOD%\playlist_view.conf" "%SSOD%\playlist_view.conf"
    mklink "%%d\%SOD%\gallery_worker.conf" "%MPV_SRC%\mpv-gallery-view\scripts-opts\gallery_worker.conf"
    mklink "%%d\%SD%\manga-reader.lua" "%MPV_SRC%\mpv-manga-reader\manga-reader.lua"
    mklink "%%d\%SD%\image-positioning.lua" "%MPV_SRC%\mpv-image-viewer\scripts\image-positioning.lua"
    mklink "%%d\%SOD%\image-positioning.conf" "%MPV_SRC%\mpv-image-viewer\scripts\scripts-opts\image-positioning.conf"
    mklink "%%d\%SD%\freeze-window.lua" "%MPV_SRC%\mpv-image-viewer\scripts\freeze-window.lua"
    mklink "%%d\%SOD%\freeze-window.conf" "%MPV_SRC%\mpv-image-viewer\scripts\scripts-opts\freeze-window.conf"
    mklink "%%d\%SD%\detect-image.lua" "%MPV_SRC%\mpv-image-viewer\scripts\detect-image.lua"
    mklink "%%d\%SOD%\detect-image.conf" "%MPV_SRC%\mpv-image-viewer\scripts\scripts-opts\detect-image.conf"
    mklink "%%d\%SD%\minimap.lua" "%MPV_SRC%\mpv-image-viewer\scripts\minimap.lua"
    mklink "%%d\%SOD%\minimap.conf" "%MPV_SRC%\mpv-image-viewer\scripts\scripts-opts\minimap.conf"
)

set "CONFIG_EDIT=%CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_EDIT%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_edit.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\chapters.lua" "%MPV_SRC%\chapters_for_mpv\chapters.lua"
    mklink "%%d\%SD%\subtitle-lines.lua" "%MPV_SRC%\mpv-subtitle-lines\subtitle-lines.lua"
    mklink "%%d\%SD%\sub-pause.lua" "%MPV_SRC%\mpv-sub-scripts\sub-pause.lua"
    mklink "%%d\%SD%\sub-skip.lua" "%MPV_SRC%\mpv-sub-scripts\sub-skip.lua"
)

rmdir /S /Q "%HOME%\Opt\mpv_stream"
mkdir %HOME%\Opt\mpv_stream
mklink /H "%HOME%\Opt\mpv_stream\mpv.exe" "%MPV_OPT%\mpv.exe"
mklink /H "%HOME%\Opt\mpv_stream\mpv.com" "%MPV_OPT%\mpv.com"
mklink /H "%HOME%\Opt\mpv_stream\d3dcompiler_43.dll" "%MPV_OPT%\d3dcompiler_43.dll"
mklink /J "%HOME%\Opt\mpv_stream\portable_config" "%MPV_SETUP_NOTE%\_config_dir_stream"

pause