Service
=======

.. option:: jellyfin

	``mprocs "jellyfin.exe --service" "timeout 20 && .../jellyfin-mpv-shim/current/run.exe"``

.. option:: komga

	``java.exe -jar "komga.jar" --komga.config-dir=".../config" %*``

.. option:: datasette

	``datasette database.db --metadata metadata.json --root``

.. option:: bukuserver

	``bukuserver run --host 127.0.0.1 --port 5001``

.. option:: etherpad

	``cd D:\srv\etherpad-lite && start.bat``

.. option:: sqlite-web

	``sqlite_web -p 8050 $1 bookmarks.db``


.. option:: rclone-webui-angular

	``rclone rcd --rc-web-gui --rc-web-gui-update --rc-web-fetch-url="https://s3.yuudi.dev/rwa/embed/version.json"``

.. option:: calibre-web

	``calibre-server.exe --port 8084 .../calibre_dir``

.. option:: Logisim-evolution

	``javaw.exe -jar logisim-evolution.jar``

.. option:: pylanguagetool

	``echo-cli $* | pylanguagetool --api-url http://localhost:8081/v2/ --input-type txt --no-color --lang en-US``