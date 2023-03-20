#!/bin/bash

sudo usermod -aG video $(id -un)
fisher install PatrickF1/fzf.fish
fisher install franciscolourenco/done
fisher install IlanCosman/tide

mkdir -p $SANDBOX
cd $SANDBOX
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd .. && rm -rf paru

