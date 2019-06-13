#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-setup.sh` then `./brew-setup.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

BREW_PACKAGES=(
    awscli
    composer
    cookiecutter
    coreutils
    git
    git-flow
    imagemagick
    libxml2
    libyaml
    mcrypt
    node
    openconnect
    php
    php-cs-fixer
    php@7.2
    phpunit
    pkg-config
    python@2
    redis
    rsync
    runit
    sl
    telnet
    zsh
)

BREW_CASK_PACKAGES=(
    android-file-transfer
    brave-browser
    google-chrome
    iterm2
    postman
    sourcetree
    sublime-text
    visual-studio-code
    android-platform-tools
    cyberduck
    handbrake
    java
    sequel-pro-nightly
    spectacle
    vagrant
    vlc
    bluestacks
    numi
    slack
    spotify
    virtualbox
)

brew update
brew upgrade

PACKAGES=''
for package in "${BREW_PACKAGES[@]}"
do :
   PACKAGES+=" ${package}"
done

brew install ${PACKAGES}

PACKAGES=''
for package in "${BREW_CASK_PACKAGES[@]}"
do :
   PACKAGES+=" ${package}"
done

brew cask install ${PACKAGES}

#Cleanup
brew cleanup
brew cask cleanup
