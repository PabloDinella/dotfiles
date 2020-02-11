#!/bin/bash

wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document /tmp/nvim
sudo chmod +x /tmp/nvim
sudo chown root:root /tmp/nvim
sudo mv /tmp/nvim /usr/bin

THIS_SCRIPT=$(readlink -f "$0")
THIS_DIR=$(dirname "$THIS_SCRIPT")
mkdir -p ~/.config/nvim
ln -s $THIS_DIR/init.vim ~/.config/nvim/init.vim
