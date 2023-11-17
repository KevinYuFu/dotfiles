#!/bin/bash

# Resources
# https://linuxhint.com/40_things_after_installing_ubuntu/

cd ~

# update apt
sudo apt update

# zsh
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install tmux
# <prefix> + I to install
# <prefix> + U to install
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install gotop
sudo snap install gotop

# Install GNOME Tweek Tool
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

# alacritty terminal (doesn't work)
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty
apt-get install cmake pkg-config libfreetype6-dev 
apt-get install libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Enable Firewall:
sudo ufw enable
sudo apt-get install gufw # GUI

# Improve Batery usage with TLP
sudo apt-get install tlp tlp-rdw
sudo systemct1 enable tlp

# Parcellite: Clipboard Manager
## <ctrl><alt>p to view Parcellite
sudo apt-get install parcellite

# vim
sudo apt install vim
sudo apt-get install python3-neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Git
sudo apt install git

# Clone from Git
git clone https://github.com/KevinYuFu/Kevin-Resume.git

# Git Auto Compelte Script
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# tidy: To clean up html
sudo apt install tidy

# Docker
sudo apt install docker.io

# Curl
sudo apt install curl

# Setup linux preferences from .vim
cd ~/.vim
./init.sh

# MYSQL
sudo apt-get install mysql-server

# NodeJS
# https://askubuntu.com/questions/1152570/npm-cant-find-module-semver-error-in-ubuntu-19-04
# tar -xf node-v#.#.#-linux-x64.tar.xz
# sudo mv node-v#.#.#-linux-x64/bin/* /usr/local/bin/
# sudo mv node-v#.#.#-linux-x64/lib/node_modules/ /usr/local/lib/
# npm install typescript --save-dev
# npm init -y


# Pulse Effects EQ
sudo apt-get -y install pulseeffects

# Cleanup
## To clean partial Packages
sudo apt-get autoclean

## To remove unused dependencies
sudo apt-get autoremove

## To auto cleanup apt-cache
sudo apt-get clean

# Latex
sudo apt install texlive-latex-extra
sudo apt-get install texlive-latex-base

# TODO After:
### Install Golang
### In vim run: `PlugInstall`
