#!/bin/bash


# Note: This section might be okay. See if we can fix this next time this script needs to be run
# Install Brew Incase
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# Add Brew to zsh
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/kaifuzen/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

# Command line Json Parser
brew install jq

# Install Alacrity
brew install --cask alacritty

# Install Stow
brew install stow

# Install Neovim
brew install neovim

# Install tmux
brew install tmux

# Install Nerd Font
brew install --cask homebrew/cask-fonts/font-ubuntu-mono-nerd-font


# Dev Tools
brew install docker
brew install docker-compose


## -- Vim Setup Stuff -- # Todo need to add to linux too?
brew install ripgrep
brew install fd


## -- Parallel Dev Tools --

# fnm - node.js manager
brew install fnm
fnm install --latest

# asdf - general package manager
# Using for python & poetry
brew install coreutils curl git
brew install asdf
asdf plugin-add python
asdf install python 3.10.13
asdf global python 3.10.13
asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
asdf install poetry latest
asdf global poetry latest

# postgresql
brew install postgresql@15

# MD Book - Book Making in Markdown
brew install mdbook
brew install graphviz
# rust -> mdbook mermaid
curl https://sh.rustup.rs -sSf | sh
cargo install mdbook-mermaid
brew install opentofu
# Git Hub
brew install gh



# install:
# (what is goto)
# (what is tidy)
# Languages:
# JS, Python, golang,

