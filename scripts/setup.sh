#!/bin/zsh

# Install XCode cli tools
echo "Installing command line tools ..."
xcode-select --install

# Homebrew
## Installing
echo "Installing Brew ..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Tapping
echo "Tapping Brew ..."
brew tap homebrew/cask-fonts

## Formulae
echo "Installing Brew Formulae"

### Terminal
brew install starship
brew install zsh-autosuggestions

### Dev
echo "Installing Brew Developpement Tools ..."
brew install yarn
brew install node
brew install nvm
brew install php
brew install composer
brew install deno
brew install stow

## Cask
echo "Installing Brew Cask ..."
brew install --cask kitty # terminal
brew install --cask spotify
brew install --cask discord
brew install --cask brave-browser
brew install --cask firefox
brew install --cask zed
brew install --cask amethyst # Window Manager
brew install --cask raycast # Command Palette
brew install --cask insomnia # API Client
brew install --cask orbstack # Docker Substitute
brew install --cask datagrip # MYSQL Workbench Substitute
brew install --cask stats # Catch CPU and Memory Usage

### Fonts
echo "Installing Brew Fonts ..."
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew install --cask homebrew/cask-fonts/font-jetbrains-mono-nerd-font

# Copying and checking configuration files
echo "Stow Configuration Files ..."
cd && cd dotfiles/
stow . --adopt
# End
echo "Installing Complete. Please restart your terminal and make sure that everything works."
