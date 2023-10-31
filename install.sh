#!/bin/bash

set -e

### Tools

# Brew 
NONINTERACTIVE=1 curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
brew install zoxide fzf tldr scc rm-improved bandwhich glances gping asciinema fd lsd

### Shell

# Install Fundle
curl -sfL https://git.io/fundle-install | fish

# Install shell dependencies with Fundle
/usr/bin/fish -c 'fundle install'

# Install/setup Starship
curl -sS https://starship.rs/install.sh | sh -y

# Change shell to fish
chsh -s /usr/bin/fish

### Link Configs

ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/git ~/.config/git
ln -s $(pwd)/fish ~/.config/fish
ln -s $(pwd)/starship.toml ~/.config/starship.toml