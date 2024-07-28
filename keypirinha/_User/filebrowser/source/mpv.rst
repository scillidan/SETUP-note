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