#!/bin/bash

cd /tmp
mkdir dotfiles-setup
cd dotfiles-setup
curl -O -L https://github.com/pawel-piecyk/dotfiles/archive/master.tar.gz
tar -zxvf master.tar.gz
mv dotfiles-master ~/dotfiles

ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.gitconfig .gitconfig

echo "source ~/dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/dotfiles/.bashrc" >> ~/.bashrc
echo "source ~/dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf

cd ~/dotfiles
git clone https://github.com/sindresorhus/pure.git --branch v1.23.0

