#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
set -u

echo "Install noVNC dependencies"
apt-get install -y novnc websockify python-numpy #used for websockify/novnc
apt-get clean -y

## create index.html to forward automatically to `vnc.html`
ln -s /usr/share/novnc/vnc.html /usr/share/novnc/index.html