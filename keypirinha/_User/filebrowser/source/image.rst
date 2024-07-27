Image
=====

.. option:: oxipng

	``oxipng -o 4 -i 1 --strip safe *.png``

.. option:: svg2png

	``svg2png $1 -w $2 -o $1.png``

.. option:: rembg

	``rembg i -a -ae 15 $1 $1.png``

.. option:: pyxelate

	``pyxelate $1 _out_$1 --factor 9 --upscale 5 --palette 10 --nosvd``

.. option:: gifsicle

	``gifsicle -O3 --lossy=80 --resize-width 600 $1 -o _$1``

.. option:: video-to-ascii

	``video-to-ascii -f $1 --strategy ascii-color``

.. option:: to svg

	``vtracer -i $1 -o $1.svg``

.. option:: ascii-image-converter

	``ascii-image-converter $1 -C -b --dither -d 100,35``

.. option:: autotrace bmp

	::

		magick convert $1 \
			-define bmp:format=bmp3 $1.bmp \
		autotrace \
			-output-file $1.svg \
			-input-format bmp \
			-despeckle-level $2 \n
			-color-count $3 \
			$1.bmp

.. option:: paletter

	``paletter -colors $1 $2``

.. option:: color-matcher

	``color-matcher -s $1 -r $2``

.. option:: imagetheming

	``java -jar ../imagetheming/build/libs/ImageTheming.jar $1 -t=$2``

.. option:: png-to-ico

	``png-to-ico $1 > $1.ico``

.. option:: favocon

	``favocon $1 -o ./favicon``

.. option:: faviator

	``faviator --size 512 --text $1 --font-size 12 --font-family "Pridi" --font-color #000 --font-weight 400 --background-color #fff --border-width 0 --border-color 0 --border-radius 0 -o favicon.png``

.. option:: png2svg

	``png2svg -v -l -o $1 $1.png``

.. option:: silicon

	::

		silicon
			--from-clipboard \
			--language $1 \
			--theme "tokyonight_moon" \
			--font "JetBrainsMonoNL Nerd Font" \
			--no-window-controls \
			--pad-horiz 0 \
			--pad-vert 0 \
			--background "#222436" \
			--tab-width 2 \
			--line-offset 0 \
			--line-pad 4 \
			--output _silicon.png


.. option:: silicon text

	::

	  silicon \
	  	--from-clipboard \
	  	--language "Text" \
	  	--font "'MonaspiceNe NFP + Sarasa Gothic SC + WFM Sans SC'=16" \
	  	--no-window-controls \
	  	--pad-horiz 0 \
	  	--pad-vert 0 \
	  	--background "#fffff8" \
	  	--tab-width 2 \
	  	--line-offset 0 \
	  	--line-pad 4 \
	  	--output _silicon.png

.. option:: Take Thumbnail

	``mt -n 16 -c 4 --disable-timestamps --header=false $*``

	``mtn -c 4 -r 4 -g 3 -k 000000 -w 1920 -i -t -D 4 -P -o _mtn.png $*``

	``vcsi -w 1920 --metadata-position hidden $*``

