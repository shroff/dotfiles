#!/bin/bash

cd $SANDBOX
sudo pacman -S --noconfirm rustup
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si && cd .. && rm -rf paru

# /etc/paru.conf
# BottomUp

