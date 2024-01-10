#!/bin/bash

# Update
sudo apt update -y
sudo apt upgrade -y

# Install tmux
sudo apt install -y tmux

# Install neovim
sudo apt install -y neovim

# Install Alacritty

# Dependencies
sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

mkdir ~/.local/bin
cd ~/.local/bin
git clone https://github.com/alacritty/alacritty.git
cd alacritty
cargo build --release

sudo cp target/release/alacritty /usr/local/bin

cd ~

# Install fish

sudo apt install -y fish

# Get configs

cd
echo ".cfg" >> .gitignore
git clone https://github.com/jbordalo/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout

# Set as default terminal

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50
