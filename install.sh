#!/bin/bash

for f in $(find . -type f ! -name install.sh ! -path '*/.git/*'); do
    mkdir -p $HOME/$(dirname $f)
    if [[ ! -e "$HOME/$f" ]]; then
        echo "Installing $(realpath --relative-to=. $f)"
        ln -srfT $f $HOME/$f
    else
        path1=$(readlink -f $HOME/$f)
	path2=$(readlink -f $f)
	if [[ $path1 != $path2 ]]; then
            echo "Unable to install $f as another file exists. Skipping..."
        fi
    fi
done


