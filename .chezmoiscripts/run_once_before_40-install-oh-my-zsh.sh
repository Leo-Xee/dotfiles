#!/bin/bash

set -e

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh already installed. Skipping."
else
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  echo "Oh My Zsh installed."
fi
