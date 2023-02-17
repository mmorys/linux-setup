#!/usr/bin/env bash

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh" -o miniconda.sh
chmod +x miniconda.sh
sh miniconda.sh
rm miniconda.sh