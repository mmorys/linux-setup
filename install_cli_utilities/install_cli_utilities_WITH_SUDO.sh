#!/usr/bin/env bash

sudo apt update
sudo apt -y upgrade

sudo apt -y install ripgrep fd-find exa
ln -s $(which fdfind) ~/.local/bin/fd
