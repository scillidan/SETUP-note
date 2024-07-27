Other
=====

.. option:: 7z

  ``7z x $1 -p"$2"``

.. option:: igir

  ``igir copy zip report --dat ./dats/*.zip --input ./ --output ./ --dir-dat-name --only-retail``

.. option:: webfont

  ``webify --no-eot --no-svg $1 && cat $1 | ttf2woff2 > $1.woff2``

.. option:: pyftsubset latin

	``pyftsubset $1.ttf --output-file=$2.woff2 --flavor=woff2 --layout-features=* --unicodes="U+0000-00FF,U+0131,U+0152-0153,U+02BB-02BC,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2122,U+2191,U+2193,U+2212,U+2215,U+FEFF,U+FFFD"``

.. option:: erdtree

  ``erd --disk-usage line --sort name --dir-order first --layout inverted $*``

.. option:: legumes

  ``node ./legumes/legc --format svg --stem-length 3 --title-text-size 28 --page-margin-x 120 ^| > _out.svg``

.. option:: fishdraw

  ``node ./fishdraw/fishdraw.js --seed $* --format smil --speed 2 > _fishdraw.svg``

.. option:: Markdeep

  ``<!-- Markdeep: --><meta charset="utf-8"><style class="fallback">body{visibility:hidden;white-space:pre;font-family:monospace}</style><script src="markdeep.min.js" charset="utf-8"></script><script src="https://morgan3d.github.io/markdeep/latest/markdeep.min.js" charset="utf-8"></script><script>window.alreadyProcessedMarkdeep||(document.body.style.visibility="visible")</script>``