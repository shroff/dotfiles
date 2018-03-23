#!/bin/bash

# install i3 config
if [[ ! -e "$HOME/.config/i3/config" ]]; then
    ln -srfT i3-config $HOME/.config/i3/config
    echo "Installed i3 config"
else
    echo "i3 config already installed. Skipping..."
fi

# install zshrc
if [[ ! -e "$HOME/.zshrc.custom" ]]; then
    ln -srT zshrc.custom $HOME/.zshrc.custom
    echo "source $HOME/.zshrc.custom" >> $HOME/.zshrc
    echo "Installed zshrc.custom"
else
    echo "zshrc.custom already exists. Skipping..."
fi

if [[ ! -e "$HOME/.vimrc" ]]; then
    ln -srT vimrc $HOME/.vimrc
    echo "Installed vimrc"
else
    echo "vimrc already exists. Skipping..."
fi
