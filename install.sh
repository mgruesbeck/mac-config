#!/bin/sh

#install xcode
xcode-select --install

#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install brew programs to this path
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/mgruesbeck/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mgruesbeck/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#make sure brew is working and is latest
brew doctor
brew update

#install via brew
brew install ack
brew install fzf
brew install gh
brew install httpie
brew install jq
brew install tig
brew install tmux
brew install tree
brew install wget
brew install tldr

#install node + npm + npm packages
brew install node
npm install -g express-generator
npm install -g license-checker
npm install -g eslint

#install python
brew install python3

#install awscli (AWS recommends pip install)
brew install awscli

#install via cask
brew install --cask abstract
brew install --cask dash
brew install --cask docker
brew install --cask firefox
brew install --cask flux
brew install --cask google-chrome
brew install --cask sketch
brew install --cask slack
brew install --cask rectangle
brew install --cask spotify
brew install --cask visual-studio-code

#install and configure git user
brew install git
git config --global user.name "Melvin Gruesbeck"
git config --global user.email "mgruesbeck@gmail.com"

#setup git https with access to keychain
git config --global credential.helper osxkeychain

#setup git global ignore and add .DS_Store
git config --global core.excludesfile ~/.gitignore
echo .DS_Store >> ~/.gitignore

#install zsh and oh-my-zsh for extra zsh stuff
brew install zsh
brew install zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

#configure zsh + tmux
cp .zshrc ~/
cp .tmux.conf ~/

#install awesome vimrc configs
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

#update all packages installed via homebrew
brew update && brew upgrade `brew outdated`

#clean up any old programs
brew cleanup

echo defaults write -g ApplePressAndHoldEnabled -bool false

