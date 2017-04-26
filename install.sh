#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#use brew over os package if duplicates 
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc

#install via brew 
brew install cmus
brew install fzf
brew install heroku-toolbelt
brew install httpie
brew install imagemagick
brew install jq
brew install tig
brew install tmux
brew install tree
brew install weechat
brew install wget
brew install yarn
brew install youtube-dl

#install node + npm + npm packages
brew install node 
yarn global add babel
yarn global add babel-eslint
yarn global add create-react-app
yarn global add eslint
yarn global add express-generator
yarn global add license-checker
yarn global add react-native-cli

#install python 
brew install python3

#install awscli (AWS recommends pip install)
pip install awscli

#install via cask
brew cask install atom
brew cask install dash
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install google-drive
brew cask install macdown
brew cask install slack
brew cask install spectacle
brew cask install wireshark

#install and configure git
brew install git
git config --global user.name "Melvin Gruesbeck"
git config --global user.email "mgruesbeck@gmail.com"

#uncomment if first time setup
#ssh-keygen -t rsa -C "mgruesbeck@gmail.com"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa
#pbcopy < ~/.ssh/id_rsa.pub
#echo 'your public key was copied to your paste board'

#install vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install zsh and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#move config files to home dir
#cp .bashrc .editorconfig .tmux.conf .vimrc .zshrc ~/
