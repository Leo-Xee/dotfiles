#!/bin/bash

set -e

if xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Tools already installed. Skipping."
else
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install
  echo "Waiting for installation to complete..."
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
  echo "Xcode Command Line Tools installed."
fi
