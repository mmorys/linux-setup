#!/usr/bin/env bash

mkdir -p $HOME/.local/bin

if command -v pipx; then
  pipx install commitizen
  pipx install tldr
  pipx install thefuck
  pipx install howdoi
  pipx install hatch
  pipx install cookiecutter
fi

curl https://getmic.ro | bash && mv micro ~/.local/bin/

curl https://dystroy.org/broot/download/x86_64-linux/broot --output broot && chmod +x broot && mv broot ~/.local/bin/

git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

while true
do
  read -p "Install fd,rg,exa with (a)pt [req sudo] or (b)inary download [no sudo, x64 only] or (s)kip? (a/b/s)" abs
  
  case $abs in 
    [aA] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/install_cli_utilities/install_cli_utilities_WITH_SUDO.sh");
      break;;
    [bB] ) source <(curl -sL "https://github.com/mmorys/linux-setup/raw/master/install_cli_utilities/install_cli_utilities_from_binaries.sh");
      break;;
    [sS] ) echo "Skipping fd,rg,exa install"
      exit;;
    * ) echo invalid response;;
  esac
done

