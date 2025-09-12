#!/bin/sh

sudo cp configuration.nix /etc/nixos/configuration.nix
cp .xinitrc ~/.xinitrc
if ! [ -d "~/.emacs.d" ]
then
    git clone https://github.com/Draune/emacs-config ~/.emacs.d
fi

sudo nixos-rebuild switch
