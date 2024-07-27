Audio
=====

.. option:: timidity

	``timidity $1 -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k $1.mp3``

.. option:: audiowaveform

	``audiowaveform -i $1 -o _out.png -z auto -w 1920 -h 150 --background-color fffff8 --waveform-color 111111 --axis-label-color fffff8 --border-color fffff8``

.. option:: ZonyLrcTools

	``ZonyLrcTools.Cli.exe download -d "^|" -l -n 2``

.. option:: m3u8

	``m3u8 -u="$1" -o="_"``