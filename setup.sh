#!/bin/bash

cd /tmp
mkdir dotfiles-setup
cd dotfiles-setup
curl -O -L https://github.com/KamilWojciech/dotfiles/archive/master.tar.gz
tar -zxvf master.tar.gz
mv dotfiles-master ~/dotfiles

ln -s ~/dotfiles/.vim ~/.vim

echo "source ~/dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/dotfiles/.bashrc" >> ~/.bashrc
echo "source ~/dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/dotfiles/.tmux.conf" >> ~/.tmux.conf

if [ ! -d ~/.marks ];
then
    mkdir ~/.marks
fi

if [ ! -d ~/.oh-my-zsh/custom/themes/ ]
then
    mkdir -p ~/.oh-my-zsh/custom/themes
fi

cp .oh-my-zsh/themes/* ~/.oh-my-zsh/custom/themes/
