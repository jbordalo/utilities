#!/bin/bash

git init $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

config config --local status.showUntrackedFiles no

config add .bashrc
config commit -m "Add .bashrc"

config remote add origin <remote-url>

config push -u origin master
