FFmpeg
======

.. option:: m4a to mp3

	``ffmpeg -i $1 -c:a libmp3lame -q:a 8 $1.mp3``

	``ffmpeg -i $1 -vn -c:a libmp3lame -b:a 224K -ac 2 $1.mp3``

.. option:: image to video

	``ffmpeg -framerate 1 -i $04d.png -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4``

	``ffmpeg -framerate 30 -i $04d.png -c:v libx264 -pix_fmt yuv420p out.mp4``

	``ffmpeg -loop 1 -i $1.jpg -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -t 1 -pix_fmt yuv420p $1_video.mp4``

.. option:: gif to mp4

	``ffmpeg -i $1.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" $1.mp4``

	``ffmpeg -i $1.mp4 -vframes 1 $1_poster.jpg``

.. option:: export subtilte

	``ffmpeg -i $1 -map 0:s:0 $1.srt``

.. option:: to mp4

	``ffmpeg -i $1 -map 0 -c:v copy -c:a ac3 -b:a 256K -ac 2 -c:s copy _$1.mp4``

=========
Reference
=========

#. [FFmpeg](https://www.ffmpeg.org)