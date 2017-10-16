#!/bin/sh

#install xcode
xcode-select --install

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install brew programs to this path
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc

#make sure brew is working and is latest
brew doctor
brew update

#install via brew
brew install ack
brew install fzf
brew install httpie
brew install jq
brew install tig
brew install tmux
brew install tree
brew install wget

#install node + npm + npm packages
brew install node
npm install -g express-generator
npm install -g license-checker

#install python
brew install python3

#install awscli (AWS recommends pip install)
brew install awscli

#install via cask
brew cask install brackets
brew cask install dash
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install slack
brew cask install spectacle
brew cask install spotify

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

#install awesome vimrc configs
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#update all packages installed via homebrew
brew update && brew upgrade `brew outdated`

#clean up any old programs
brew cleanup
