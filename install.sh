#!/bin/bash

for f in $(find install -type f); do
    relpath=$(realpath --relative-to=install $f)
    mkdir -p $HOME/$(dirname $relpath)
    if [[ ! -e "$HOME/$relpath" ]]; then
        echo "Installing $relpath"
        ln -srfT $f $HOME/$relpath
    else
        path1=$(readlink -f $HOME/$relpath)
        path2=$(readlink -f $f)
        if [[ $path1 != $path2 ]]; then
            echo "Unable to install $relpath as another file exists. Skipping..."
        fi
    fi
done


