#!/usr/bin/env bash

# Get font name from https://github.com/ryanoasis/nerd-fonts/releases under Assets
# zip file extension will be included automatically
FONT="UbuntuMono"

# Install font
cd $HOME
FONT_ARCHIVE="${FONT}.zip"
mkdir -p $HOME/.local/share/fonts
curl -L -O "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${FONT_ARCHIVE}"
unzip "${FONT_ARCHIVE}" -d $HOME/.local/share/fonts
rm "${FONT_ARCHIVE}"
fc-cache -f -v
