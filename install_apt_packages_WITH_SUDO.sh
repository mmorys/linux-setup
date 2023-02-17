#!/usr/bin/env bash

sudo apt update
sudo apt -y upgrade

for SCRIPTNAME in install_utilities_WITH_SUDO install_jdk_WITH_SUDO install_nodejs_WITH_SUDO install_docker_WITH_SUDO
do 
  while true
  do
    read -p "Do you want to ${SCRIPTNAME}? (y/n)" yn
    
    case $yn in 
      [yY] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/install_apt_packages/${SCRIPTNAME}.sh");
        break;;
      [nN] ) echo "Skipping $SCRIPTNAME";
        exit;;
      * ) echo invalid response;;
    esac
  done
done

echo 'sudo installs finished!'
