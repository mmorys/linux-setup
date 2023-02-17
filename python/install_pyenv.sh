#!/usr/bin/env bash

touch ~/.bashrc
touch ~/.zshrc

sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' | tee -a $HOME/.bashrc $HOME/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' | tee -a $HOME/.bashrc $HOME/.zshrc
echo 'eval "$(pyenv init -)"' | tee -a $HOME/.bashrc $HOME/.zshrc
source $HOME/.bashrc
pyenv install 3.10.8
pyenv global 3.10.8
source $HOME/.bashrc
