#! /bin/bash

cd ~

if [[ -e dotfiles_bak ]];then
    rm -rf dotfiles_bak
fi

mkdir dotfiles_bak

mv -f .zshrc .bashrc .vimrc .tmux.conf .tmux.conf.local .editrc .vim dotfiles_bak

ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.tmux.conf.local ~/
ln -s ~/dotfiles/.editrc ~/
ln -s ~/dotfiles/.vim ~/


