Combo
=====

.. option:: make dirs

	``ki $* > _.md && mkdirs _.md && trash _.md``

	``cook x $1-$2 | sd x1 "\55 $3" > _.md && mkdirs _.md && trash _.md``

.. option:: color

	``cd JS-demo\color\data && cat chinese-traditional-colors.md china-tradition-color-monokuro.md zhongguose.md china-tradition-color-320.md nipponcolors.md | mdtable2csv | xsv select hex,spelling,name | tidy-viewer -D -a -e | coloro | less -R``
.. option:: linkding

	``linkding --url "http://127.0.0.1:8002" --token "YourToken" bookmarks all -q $* | jq ".results[]" | ramda -c -o csv | xsv select id,tag_names,url,website_description | tidy-viewer -u 50``

=========
Reference
=========

#. https://github.com/dolanor/mkdirs
#. https://github.com/glitchedgitz/cook
#. https://github.com/chmln/sd