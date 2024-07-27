G'MIC
=====

.. option:: matchpatch

	``gmic $1 $2 +matchpatch[0] [1],3 +warp[-2] [-1],0``

.. option:: quantize_blur

	``gmic $1 quantize 6 blur 1 round[-1] quantize_area[-1] 2``

.. option:: quantize_splitcolors

	``gmic $1 quantize 3 +split_colors , display_rgba``

.. option:: watershed

	``gmic $1 segment_watershed 4``

.. option:: srgb2lab_blend

	``gmic $1 +srgb2lab slic[-1] 16 +blend shapeaverage f[-2] "j(1,0)==i && j(0,1)==i" *[-1] [-2]``

.. option:: topographic

	``gmic $1 topographic_map 10``

.. option:: kuwahara

	``gmic $1 kuwahara 9``

.. option:: grid

	``gmic $1 grid 10%,16%,0,0,0.2,255``

.. option:: montage

	``gmic $1 montage H1:V0:VH2:1H0:3``

.. option:: frame

	``gmic $1 frame_xy 1,1,0 frame_xy 10,5,0,0,0``

=========
Reference
=========

#. https://gmic.eu