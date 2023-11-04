#!/usr/bin/env bash

set -ue

. functions.sh

### Setup

mkdir -p ~/.config
mkdir -p ~/.local/bin

if sudo --validate; then
  while true; do
    sudo --non-interactive true
    sleep 60
    kill -0 "$$" || exit
  done 2>/dev/null &
  substep_info "Sudo password saved. Continuing with script."
else
  substep_error "Incorrect sudo password. Exiting script."
  exit 1
fi

### Tools

platform="$(uname -s)"

info "Platform $platform"

if [[ $platform == "Darwin" ]]; then
  if ! $(which brew); then
    substep_info "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if ! $(which brew); then
      substep_error "Error installing Homebrew. Exiting script."
      exit 1
    fi
    success "Homebrew installation complete."
  else
    substep_success "Homebrew already installed. Skipping installation."
  fi

  substep_info "Installing Brew packages"
  brew install fish fzf gping asciinema fd lsd httpie
  substep_success "Brew packages installed"

elif [[ $platform == "Linux" ]]; then
  DEBIAN_FRONTEND=noninteractive

  substep_info "Installing APT packages"
  sudo apt update -y
  sudo apt install -y fish fzf asciinema fd-find lsd httpie

  symlink $(which fdfind) ~/.local/bin/fd
  substep_success "APT packages installed"
fi

### Link Configs

substep_info "Linking configs"
symlink $(pwd)/git/.gitconfig ~/.gitconfig
symlink $(pwd)/git ~/.config/git
symlink $(pwd)/fish ~/.config/fish
symlink $(pwd)/starship/starship.toml ~/.config/starship.toml

### Shell

# Download Fundle
substep_info "Installing Fundle"
curl -fsSLo ~/.config/fish/functions/fundle.fish https://git.io/fundle
fish -c 'fundle install'

# Install/setup Starship
substep_info "Installing Starship"
curl -fsSL https://starship.rs/install.sh | sh -s -- -y

# Add fish to list of shells
substep_info "Adding Fish to available shells..."
sudo sh -c "echo $(which fish) >> /etc/shells"
# Set fish as default
sudo chsh -s $(which fish) $(whoami)

success "Dotfiles done!"