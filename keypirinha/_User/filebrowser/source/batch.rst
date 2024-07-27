Batch
=====

.. option:: 7z archive

::

	@echo off
	for /d %%X in (*) do 7z a "%%X.zip" "%%X"

.. option:: to_cbz

::

	@echo off
	for /d %%X in (*) do python to_cbz.py %%X

.. option:: png-to-ico

::

	@echo off
	for %%F in (*.png) do (
		png-to-ico "%%F" > "%%~nF.ico"
	)

.. option:: split_manga_pages

::

	@echo off
	for /d %%X in (*) do (
		split_manga_pages -d %%X -m all
		move %%X/split_manga_pages split_manga_pages-%%X
	)

.. option:: gif_to_mp4

::

  @echo off
  setlocal enabledelayedexpansion

  rem Set the current working directory
  set "directory=%cd%"

  rem Create an output directory if it doesn't exist
  if not exist "%directory%\_out" mkdir "%directory%\_out"

  rem Iterate over each GIF file in the directory
  for %%i in ("%directory%\*.gif") do (
      echo Processing: %%i
      ffmpeg -i "%%i" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%directory%\_out\%%~ni.mp4"
  )

  echo All GIFs converted to MP4 and saved in _out directory.
  pause