#!/usr/bin/env bash

FD_VER="v8.6.0"
FD_NAME="fd-${FD_VER}-x86_64-unknown-linux-musl"
curl -sL "https://github.com/sharkdp/fd/releases/download/${FD_VER}/${FD_NAME}.tar.gz" -o fd.tar.gz
tar -xf fd.tar.gz --directory=./
mv "${FD_NAME}/fd" "$HOME/.local/bin/"
rm -rf "$FD_NAME"
rm fd.tar.gz

RG_VER="13.0.0"
RG_NAME="ripgrep-${RG_VER}-x86_64-unknown-linux-musl"
curl -sL "https://github.com/BurntSushi/ripgrep/releases/download/${RG_VER}/${RG_NAME}.tar.gz" -o rg.tar.gz
tar -xf rg.tar.gz --directory=./
mv "${RG_NAME}/rg" "$HOME/.local/bin/"
rm -rf "$RG_NAME"
rm rg.tar.gz

## TODO: fix
EXA_VER="v0.10.1"
EXA_NAME="exa-linux-x86_64-musl-${RG_VER}"
mkdir exa
curl -sL "https://github.com/ogham/exa/releases/download/${EXA_VER}/${EXA_NAME}.zip" -o exa.zip
unzip exa.zip -d exa/
mv "${EXA_NAME}/rg" "$HOME/.local/bin/"
rm -rf "$RG_NAME"
rm rg.tar.gz
https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip
https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip