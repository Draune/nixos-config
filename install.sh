#!/bin/bash

EMACS_CFG=/home/louis/.emacs.d/

sudo cp configuration.nix /etc/nixos/configuration.nix
cp .xinitrc ~/.xinitrc
if [ ! -d "$EMACS_CFG" ] ; then
    git clone https://github.com/Draune/emacs-config ~/.emacs.d
fi

sudo nixos-rebuild switch
