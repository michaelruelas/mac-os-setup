#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./02-dev-setup.sh` then `./brew-setup.sh`

# Shell / Propt
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install starship
echo -e "\neval \"\$(starship init zsh)\"" >>~/.zshrc
brew install zsh
brew install zsh-autosuggestions
echo -e "\nsource /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc

# Programming Languages
brew install php@7.4
brew install node
brew install nvm

# Supporting Software
brew install composer
brew install php-cs-fixer
brew install git
brew install docker
brew install docker-machine
brew install mysql
brew install awscli
brew install curl
brew install git-flow

# Apps
brew install visual-studio-code
brew install sequel-ace
brew install iterm2
brew install postman

# Communication Apps
brew install slack

# Browsers
brew install google-chrome
brew install firefox

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font
brew install font-fira-mono
brew install font-fira-sans

# Misc
brew install rectangle
brew install numi
brew install istat-menus
brew install gitkraken
brew install spotify
brew tap jakehilborn/jakehilborn && brew install displayplacer

# Cleanup
brew cleanup
brew cask cleanup
