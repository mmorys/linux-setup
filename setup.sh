#!/usr/bin/env bash

for SCRIPTNAME in install_apt_pkgs_WITH_SUDO setup_ssh_keys set_zsh_as_default_shell install_nerdfont install_python setup_oh_my_zsh setup_cli_utilities
do 
  while true
  do
    read -p "Do you want to ${SCRIPTNAME}? (y/n)" yn
    
    case $yn in 
      [yY] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/${SCRIPTNAME}.sh");
        break;;
      [nN] ) echo "Skipping $SCRIPTNAME";
        exit;;
      * ) echo invalid response;;
    esac
  done
done