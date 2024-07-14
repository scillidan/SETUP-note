## Get hosts

I get IP address from `https://www.ipaddress.com`.

## Setup on Windows 10

1. Create shortcut of `setup_on_windows.bat`.
2. Then set to `Run as Administrator` in `Advanced Properties` the properties menu.
3. Double-click the shortcut to run.

## Setup on Ubuntu

```sh
sudo cp "/etc/hosts" "/etc/hosts_bak"
```

```sh
chmod +x setup_on_ubuntu.sh
./setup_on_ubuntu.sh
```