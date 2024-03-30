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
brew install zsh-syntax-hightlighting

### Dev
echo "Installing Brew Developpement Tools ..."
brew install php
brew install composer
brew install node
brew install yarn
brew install python
brew install pyenv
brew install symfony-cli

## Cask
echo "Installing Brew Cask"
brew install --cask kitty # terminal
brew install --cask spotify
brew install --cask discord
brew install --cask brave-browser
brew install --cask amethyst # Window Manager

### Fonts
echo "Installing Brew Fonts"
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew install --cask homebrew/cask-fonts/font-jetbrains-mono-nerd-font

# Copying and checking configuration files
echo "Download and checkout configuration files"
[ ! -d "$HOME/dotfile"] && git clone --bare --branch macos --single-branch git@github.com:SorenMesselier-Sentis/dotfiles.git
git --git-dir=$HOME/dotfile/ --work-tree=$HOME/.config/ checkout macos

# End
echo "Installing Complete."
