#! /bin/bash

cd ~

if [[ -e dotfiles_bak ]];then
    rm -rf dotfiles_bak
fi

mkdir dotfiles_bak

mv -f .zshrc .bashrc .vimrc .tmux.conf .tmux.conf.local .editrc .vim dotfiles_bak

cp -s ~/dotfiles/.zshrc ~/
cp -s ~/dotfiles/.bashrc ~/
cp -s ~/dotfiles/.vimrc ~/
cp -s ~/dotfiles/.tmux.conf ~/
cp -s ~/dotfiles/.tmux.conf.local ~/
cp -s ~/dotfiles/.editrc ~/
ln -s ~/dotfiles/.vim ~/


