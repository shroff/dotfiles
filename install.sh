#!/bin/bash

# install i3 config
mkdir -p $HOME/.config/i3
if [[ ! -e "$HOME/.config/i3/config" ]]; then
    ln -srfT i3-config $HOME/.config/i3/config
    echo "Installed i3 config"
else
    echo "i3 config already installed. Skipping..."
fi

if [[ ! -e "$HOME/.config/i3/config-sway-i3-common" ]]; then
    ln -srT sway-i3-common-config $HOME/.config/i3/config-sway-i3-common
    echo "Installed sway-i3-common config"
else
    echo "sway-i3-common config already installed. Skipping..."
fi

# install sway config
mkdir -p $HOME/.config/sway
if [[ ! -e "$HOME/.config/sway/config" ]]; then
    ln -srfT sway-config $HOME/.config/sway/config
    echo "Installed sway config"
else
    echo "sway config already installed. Skipping..."
fi

# install zshrc
if [[ ! -e "$HOME/.zshrc.custom" ]]; then
    ln -srT zshrc.custom $HOME/.zshrc.custom
    echo "source $HOME/.zshrc.custom" >> $HOME/.zshrc
    echo "Installed zshrc.custom"
else
    echo "zshrc.custom already exists. Skipping..."
fi

# vimrc
if [[ ! -e "$HOME/.vimrc" ]]; then
    ln -srT vimrc $HOME/.vimrc
    echo "Installed vimrc"
else
    echo "vimrc already exists. Skipping..."
fi

# dunstrc
mkdir -p $HOME/.config/dunst
if [[ ! -e "$HOME/.config/dunst/dunstrc" ]]; then
    ln -srT dunstrc $HOME/.config/dunst/dunstrc
    echo "Installed dunstrc"
else
    echo "dunstrc already exists. Skipping..."
fi

# screnrc
if [[ ! -e "$HOME/.screenrc" ]]; then
    ln -srT screenrc $HOME/.screenrc
    echo "Installed screenrc"
else
    echo "screenrc already exists. Skipping..."
fi
