#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./01-brew-setup.sh` then `./brew-setup.sh`

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade
