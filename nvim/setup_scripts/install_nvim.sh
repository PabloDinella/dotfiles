#!/bin/bash

wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document /tmp/nvim
sudo chmod +x /tmp/nvim
sudo chown root:root /tmp/nvim
sudo mv /tmp/nvim /usr/bin


