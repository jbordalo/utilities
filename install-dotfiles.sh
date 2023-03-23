#!/bin/bash

echo ".cfg" >> .gitignore

git clone https://github.com/jbordalo/dotfiles.git $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

config config --local status.showUntrackedFiles no

config checkout
