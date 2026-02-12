#!/bin/bash

set -e

if [ -d "$HOME/.nvm" ]; then
  echo "NVM already installed. Skipping."
else
  echo "Installing NVM..."
  PROFILE=/dev/null curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  echo "NVM installed."
fi
