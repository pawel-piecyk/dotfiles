#!/bin/bash

cd /tmp
mkdir dotfiles-setup
cd dotfiles-setup
curl -O -L https://bitbucket.org/pawelpiecyk/dotfiles/get/master.zip
unzip *.zip
mv pawel* ~/dotfiles

ln -s ~/dotfiles/.vim ~/.vim

echo "source ~/dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/dotfiles/.bashrc" >> ~/.bashrc
echo "source ~/dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf
