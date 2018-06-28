#!/bin/sh

# Setup Script for other misc stuff
# To execute: save and `chmod +x ./misc-setup.sh` then `./misc-setup.sh`

#iTerm Material Theme
curl -o ~/Downloads/material-dark.itermcolors https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors

#Node Packages
npm install --g prettier
npm install --g grunt
npm install -g gulp
npm install -g sails
npm install -g bower

#Dark Slack Theme
cat slack-dark-theme.js >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js

#Install and setup Laravel Homestead
vagrant box add laravel/homestead
git clone https://github.com/laravel/homestead.git ~/Homestead
cd ~/Homestead
git checkout v7.8.0
bash init.sh
vagrant plugin install vagrant-bindfs

#Composer Packages
composer global require "squizlabs/php_codesniffer=*"
composer global require greynoise-design/laravel-coding-standard

#ZSH install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
