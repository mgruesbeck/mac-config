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

#clean up any old programs
brew cleanup

#install via brew 
brew install fzf
brew install ack
brew install httpie
brew install jq
brew install tig
brew install tmux
brew install tree
brew install wget
brew install yarn

#install node + npm + npm packages
brew install node 
yarn global add express-generator
yarn global add license-checker

#install python 
brew install python3

#install awscli (AWS recommends pip install)
pip install awscli

#install via cask
brew cask install dash
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install slack
brew cask install spectacle
brew cask install docker-toolbox
brew cask install brackets

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
