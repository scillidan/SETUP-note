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
type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\video.conf" "%INCLD%\_watch-later.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_STREAM%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\music.conf" "%INCLD%\_subtitle.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_MUSIC%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLD%\_hdr.conf" "%INCLD%\manga.conf" "%INCLD%\_watch-later.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_MANGA%\mpv.conf"
type "%INCLD%\_osd.conf" "%INCLOD%\uosc.conf" "%INCLD%\_hdr.conf" "%INCLD%\video.conf" "%INCLD%\_watch-later.conf" "%INCLD%\_subtitle.conf" "%INCLD%\_screenshot.conf" "%INCLOD%\inputevent.conf" > "%CONFIG_DIR_EDIT%\mpv.conf"

type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\video.conf" > "%CONFIG_DIR_VIDEO%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\stream.conf" > "%CONFIG_DIR_STREAM%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\music.conf" > "%CONFIG_DIR_MUSIC%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\manga.conf" > "%CONFIG_DIR_MANGA%\input.conf"
type "%IND%\_global.conf" "%IND%\_test.conf" "%IND%\edit.conf" > "%CONFIG_DIR_EDIT%\input.conf"

rem del "%MPV_CONFIG%\pip-tool.exe"
rem mklink "%MPV_CONFIG%\pip-tool.exe" "%MPV_DL%\mpv-pip\pip-tool.exe"
rmdir /S /Q "%MPV_CONFIG%\real_loudnorm"

set "CONFIG_GLOBAL=%CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_MUSIC% %CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_GLOBAL%) do (
    mklink /J "%%d\%INCLD%" "%MPV_SETUP_NOTE%\%INCLD%"
    mklink /J "%%d\%SD%\uosc" "%MPV_DL%\uosc\scripts\uosc"
    type "%MPV_DL%\uosc.conf" > "%%d\%SOD%\uosc.conf"
    mklink "%%d\scripts\show-errors.lua" "%MPV_SRC%\mpv-scripts@cogentredtester\show-errors.lua"
)

set "CONFIG_VIDEO=%CONFIG_DIR_VIDEO% %CONFIG_DIR_STREAM% %CONFIG_DIR_EDIT%"

for %%d in (%CONFIG_VIDEO%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_video.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\hdr-toys-helper.lua" "%MPV_SRC%\hdr-toys\scripts\hdr-toys-helper.lua"
    type "%SSOD%\hdr-toys.conf" >> "%%d\mpv.conf"
    mklink "%%d\%SD%\memo.lua" "%MPV_SRC%\memo\memo.lua"
    type "%MPV_SRC%\memo\memo.conf" "%INCLOD%\memo.conf" > "%%d\%SOD%\memo.conf"
    mklink "%%d\%SD%\inputevent.lua" "%MPV_SRC%\input-event\inputevent.lua"
    mklink "%%d\%SD%\evafast.lua" "%MPV_SRC%\evafast\evafast.lua"
    mklink "%%d\%SOD%\evafast.conf" "%MPV_SRC%\evafast\evafast.conf"
    mklink "%%d\%SD%\thumbfast.lua" "%MPV_SRC%\thumbfast\thumbfast.lua"
    mklink "%%d\%SOD%\thumbfast.conf" "%MPV_SRC%\thumbfast\thumbfast.conf"
    mklink "%%d\%SD%\rememeber-voluma.lua" "%MPV_SRC%\remember-volume.lua\rememeber-voluma.lua"
    mklink "%%d\%SD%\ontop-playback.lua" "%MPV_SRC%\mpv\TOOLS\lua\ontop-playback.lua"
    mklink "%%d\%SD%\delete_file.lua" "%MPV_SRC%\mpv-scripts@zenyd\delete_file.lua"
    mklink "%%d\%SD%\pip.lua" "%SSD%\pip.lua"
    mklink "%%d\%SD%\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    mklink /J "%%d\%SD%\real_loudnorm" "%MPV_SRC%\mpv-loudnorm"
    rem mklink "%%d\%SD%\switch-both-audio.lua" "%MPV_SRC%\mpv-switch-both-audio\switch-both-audio.lua"
    rem mklink "%%d\%SD%\audio-dupe.lua" "%MPV_SRC%\audio-dupe.lua\audio-dupe.lua"
    rem mklink "%%d\%SD%\cycle-adevice.lua.lua" "%MPV_SRC%\cycle-adevice.lua\cycle-adevice.lua.lua"
)

set "CONFIG_STREAM=%CONFIG_DIR_STREAM%"

for %%d in (%CONFIG_STREAM%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_stream.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\quality-menu-osc.lua" "%MPV_SRC%\mpv-quality-menu\quality-menu-osc.lua"
    mklink "%%d\%SOD%\quality-menu.conf" "%MPV_SRC%\mpv-quality-menu\quality-menu.conf"
    mklink "%%d\%SD%\appendURL.lua" "%MPV_SRC%\mpv-scripts@jonniek\appendURL.lua"
    mklink "%%d\%SD%\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\%SD%\webtorrent.js" "%HOME\.local\share\pnpm\webtorrent-mpv-hook\build\webtorrent.js"
    mklink "%%d\%SOD%\webtorrent.conf" "%SSOD%\webtorrent.conf"
)

set "CONFIG_MUSIC=%CONFIG_DIR_MUSIC%"

for %%d in (%CONFIG_MUSIC%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_music.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    rem mklink "%%d\%SD%\rememeber-voluma.lua" "%MPV_SRC%\remember-volume.lua\rememeber-voluma.lua"
    rem mklink "%%d\%SD%\smart_volume.lua" "%SSD%\smart_volume.lua"
    mklink "%%d\%SD%\pip.lua" "%SSD%\pip.lua"
    mklink "%%d\%SD%\navigator.lua" "%SSD%\navigator.lua"
    mklink "%%d\%SD%\playlistmanager.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.lua"
    mklink "%%d\%SD%\playlistmanager-save-interactive.lua" "%MPV_SRC%\mpv-playlistmanager\playlistmanager-save-interactive.lua"
    mklink "%%d\%SOD%\playlistmanager.conf" "%MPV_SRC%\mpv-playlistmanager\playlistmanager.conf"
    mklink "%%d\%SD%\reload.lua" "%MPV_SRC%\mpv-scripts@sibwaf\reload.lua"
    mklink "%%d\%SD%\save-playlist.lua" "%MPV_SRC%\save-playlist\save-playlist.lua"
    mklink "%%d\%SD%\average_volume.lua" "%MPV_SRC%\mpv-scripts_stax76\average_volume.lua"
    rem mklink "%%d\%SD%\fuzzydir.lua" "%MPV_SRC%\mpv-scripts@sibwaf\fuzzydir.lua"
    rem mklink "%%d\%SD%\remember_audio_geometry.lua" "%MPV_SRC%\remember_audio_geometry\remember_audio_geometry.lua"
    mklink "%%d\%SD%\lrc.lua" "%MPV_SRC%\mpv-lrc\lrc.lua"
    mklink "%%d\%SOD%\lrc.conf" "%MPV_SRC%\mpv-lrc\scripts-opts\lrc.conf"
)

set "CONFIG_MANGA=%CONFIG_DIR_MANGA%"

for %%d in (%CONFIG_MANGA%) do (
    type "%SSD%\mpv-cheatsheet_01.js" "%SSD%\mpv-cheatsheet_02.js" "%SSD%\mpv-cheatsheet_03_manga.js" "%SSD%\mpv-cheatsheet_04.js" > "%%d\%SD%\mpv-cheatsheet.js"
    mklink "%%d\%SD%\gallery-thumbgen.lua" "%MPV_SRC%\mpv-gallery-view\scripts\gallery-thumbgen.lua"
    mklink "%%d\%SMD%\gallery.lua" "%MPV_SRC%\mpv-gallery-view\script-modules\gallery.lua"
    mklink "%%d\%SD%\playlist-view.lua" "%MPV_SRC%\mpv-gallery-view\script-opts\playlist-view.lua"
    rem mklink "%%d\%SD%\playlist-view.lua" "%SSD%\playlist-view.lua"
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
    mklink "%%d\%SOD%\chapters.conf" "%MPV_SRC%\chapters_for_mpv\scripts-opts\chapters.conf"
    mklink "%%d\%SD%\subtitle-lines.lua" "%MPV_SRC%\mpv-subtitle-lines\subtitle-lines.lua"
    mklink "%%d\%SD%\sub-pause.lua" "%MPV_SRC%\mpv-sub-scripts\sub-pause.lua"
    mklink "%%d\%SD%\sub-skip.lua" "%MPV_SRC%\mpv-sub-scripts\sub-skip.lua"
    rem mklink "%%d\%SD%\SimpleBookmark.lua" "%MPV_SRC%\mpv-scripts@eisa01\scripts\SimpleBookmark.lua"
    rem mklink "%%d\%SOD%\SimpleBookmark.conf" "%MPV_SRC%\mpv-scripts@eisa01\scripts-opts\SimpleBookmark.conf"
)

pause