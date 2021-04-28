#!/bin/sh

# Dev Setup Script for OSX
# To execute: save and `chmod +x ./mac-setup.sh` then `./mac-setup.sh`

# Run Homebrew setup script
chmod +x ./01-brew-setup.sh
./01-brew-setup.sh

# Run Dev setup script
chmod +x ./02-dev-setup.sh
./02-dev-setup.sh

# Run Misc setup script
chmod +x ./03-misc-setup.sh
./03-misc-setup.sh
