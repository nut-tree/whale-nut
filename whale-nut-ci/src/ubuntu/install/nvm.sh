#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> $HOME/.bashrc