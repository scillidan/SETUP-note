mpv
===

.. option:: Name Suffix etc.

	``.zh&en.srt``

	``.zh&es.es2zh.srt``

	``.zh&en.es2en@mt2zh.srt``

.. option:: kamite

	::

		mpv \
		  --input-ipc-server=/./pipe/kamite-mpvsocket \
		  --sub-file=%2 \
		  --sid=2 \
		  --secondary-sid=1 \
		  --secondary-sub-visibility=no \
		  --save-position-on-quit \
		  $*

.. option:: lyric

	::

		mpv \
			--force-window=yes \
			--autofit=x500 \
			--cover-art-files="cover_01.jpg;cover_02.jpg" \
			--vid=1 \
			--sub-auto=fuzzy \
			--sid=2 \
			--secondary-sid=1 \
			--sub-color="#ffffff" \
			--sub-back-color="#000000" \
			--sub-border-size=0 \
			--sub-font="LXGW WenKai Mono GB Light" \
			--sub-font-size=25 \
			--vo=gpu-next \
			--sub-align-y=center \
			--sub-margin-y=320 \
			--sub-justify=left \
			--ontop \
			--idle \
			$*

.. option:: mpv-lyric

	``mpv --config-dir="MpvLyricConfigDir" --idle --force-window --merge-files --geometry=1920x1080 --no-video``