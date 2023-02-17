#!/usr/bin/env bash

while true
do
  read -p "Install Python with (p)yenv [req sudo] or (c)onda [no sudo]? (p/c)" pc
  
  case $pc in 
    [pP] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/python/install_pyenv.sh");
      break;;
    [cC] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/python/install_conda.sh");
      exit;;
    * ) echo invalid response;;
  esac
done

pip install pipx
pipx ensurepath
source $HOME/.bashrc
