ImageMagick
===========

.. option:: dither

	``magick convert $1 -ordered-dither h4x4o -colors 8 _$1``

.. option:: dither gray

	``magick convert $1 -colorspace Gray -ordered-dither o2x2 _$1``

.. option:: paint

	``magick convert $1 -paint 3 _$1``

.. option:: sketch

	``magick convert $1 -colorspace gray -sketch 0x10+120 _$1``

.. option:: charcoal

	``magick convert $1 -charcoal 2 _$1``

.. option:: complementary color

	``convert $1.png -channel RGB -negate _$1.png``

.. option:: border

	``magick convert $1 -bordercolor $3 -border $2 _$1``

.. option:: crop

	``magick convert $1.png -crop x1500 _$1_%d.png``

.. option:: montage tile 1x

	``magick montage $1 -resize 750x -geometry +0+0 -tile 1x _.png``

.. option:: montage tile x1

	``magick montage $1 -density 300 -tile x1 -geometry +1+1 -background #000 _.png && magick convert -border 1 -bordercolor #000 -strip -interlace Plane -quality 0.85 _.png _.jpg``

.. option:: bmp to png

	``magick mogrify -format png $1``

.. option:: to pdf

	``magick convert "*.{png,jpeg}" -quality 100 _.pdf``

.. option:: annotate

	::

		magick convert $1 \
			-undercolor #00000075 \
			-fill #FFFFFF \
			-gravity NorthWest \
			-font "sarasa-mono-sc-regular.ttf" \
			-pointsize 20 \
			-interline-spacing 2 \
			-annotate +10+10 $2 \
			_$1

.. option:: preview_image

	::

	  magick convert \
	  	-size $2 \
	  	-background #000000 \
	  	-fill #fffff8 \
	  	-font "sarasa-mono-sc-regular.ttf" \
	  	-gravity Center \
	  	-pointsize 20 \
	  	-interline-spacing 2 \
	  	caption:$3 \
	  	$1.png

====
Note
====

#. ``-auto-orient``

=========
Reference
=========

#. https://www.imagemagick.org