PDF
===

.. option:: markpdf

	``markpdf $1 mark.png --opacity=0.3``

.. option:: pdfalyzer

	``python pdf_pdfalyzer.py $*``

.. option:: batchpdfsign

	``java -jar batchpdfsign-portable.jar -k Your.pfx -p YourPassword -i $1 -o _sig_$1.pdf``

.. option:: open-pdf-sign

	``java -jar open-pdf-sign.jar --input $1 --output _sig_$1.pdf --certificate Your.crt --key Your.pem --passphrase YourPassword --page -1 --locale zh-CN``

.. option:: percollate pdf

	``percollate pdf $1 -o _out.pdf --css ":root { --main-font: 'Beholden Medium';  --code-font: 'Beholden Medium'; --alt-font: 'Beholden Medium'; }"``

.. option:: percollate epub

	``percollate epub $1 -o _out.epub``

.. option:: paperoni

	``paperoni $1 --export epub``