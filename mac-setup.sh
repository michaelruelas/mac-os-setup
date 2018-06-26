#!/bin/sh

# Dev Setup Script for OSX
# To execute: save and `chmod +x ./mac-setup.sh` then `./mac-setup.sh`

#Run Visual Studio Code setup script
chmod +x ./brew-setup.sh
./brew-setup.sh

#Run Visual Studio Code setup script
chmod +x ./vs-code-setup.sh
./vs-code-setup.sh

#Run misc setup script
chmod +x ./misc-setup.sh
./misc-setup.sh