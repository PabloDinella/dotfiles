#!/bin/bash

THIS_SCRIPT=$(readlink -f "$0")
THIS_DIR=$(dirname "$THIS_SCRIPT")
mkdir -p ~/.config/nvim
ln -s $THIS_DIR/init.vim ~/.config/nvim/init.vim
