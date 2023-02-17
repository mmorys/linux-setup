#!/usr/bin/env bash

ssh-keygen -t rsa -f $HOME/.ssh/id_rsa -N ''
ssh-keygen -t ed25519 -f $HOME/.ssh/id_ed25519 -N ''
