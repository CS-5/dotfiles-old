#!/bin/bash

set -e

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
fi

curl -fsSL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

### Link Configs

mkdir -p ~/.config
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/git ~/.config/git
ln -s $(pwd)/fish ~/.config/fish
ln -s $(pwd)/starship.toml ~/.config/starship.toml

### Shell

# Install/setup Starship
curl -fsSL https://starship.rs/install.sh | sh -y

# Install Fundle
curl -fsSL https://git.io/fundle-install | fish

fish -c 'reload'

# Install shell dependencies with Fundle
fish -c 'fundle install'

# Change shell to fish
chsh -fsSL /usr/bin/fish