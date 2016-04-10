#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#use brew over os package if duplicates 
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc

#install via brew 
brew install awscli
brew install cmus
brew install fzf
brew install heroku-toolbelt
brew install imagemagick
brew install tig
brew install tmux
brew install weechat
brew install wget
brew install youtube-dl

#install node + npm 
brew install node

#npm installs
npm install bower -g

#install via cask
brew cask install firefox
brew cask install flux
brew cask install gnucash 
brew cask install google-chrome
brew cask install google-drive
brew cask install slack
brew cask install spectacle

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

