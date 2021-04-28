#!/bin/sh

# Setup Script for other misc stuff
# To execute: save and `chmod +x ./misc-setup.sh` then `./misc-setup.sh`

# Set up NVM
mkdir ~/.nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Node Packages
npm install --g prettier
npm install --g grunt
npm install -g gulp
npm install -g bower

#iTerm Material Theme
curl -o ~/Downloads/material-dark.itermcolors https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
