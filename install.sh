#!/bin/bash

set -e

### Setup

mkdir -p ~/.config
mkdir -p ~/.local/bin

### Tools

# Platform-specific
platform="$(uname -s)"
if [[ $platform == "Darwin" ]]; then
  if [[ -x "$(command -v brew)" ]]; then
    NONINTERACTIVE=1
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
  fi

  brew install fish fzf gping asciinema fd lsd httpie
elif [[ $platform == "Linux" ]]; then
  DEBIAN_FRONTEND=noninteractive

  apt update -y
  apt install -y fish fzf asciinema fd-find lsd httpie

  ln -s $(which fdfind) ~/.local/bin/fd
fi

curl -fsSL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

### Link Configs

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git ~/.config/git
ln -s $(pwd)/fish ~/.config/fish
ln -s $(pwd)/starship/starship.toml ~/.config/starship.toml

### Shell

# Download Fundle
curl -fsSLo ~/.config/fish/functions/fundle.fish https://git.io/fundle

# Install/setup Starship
curl -fsSL https://starship.rs/install.sh | sh -s -- -y

# Install shell dependencies with Fundle
fish -c 'fundle install'

# Change shell to fish
chsh -s /usr/bin/fish

fish -c 'exec fish'