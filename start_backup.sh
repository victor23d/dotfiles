#! /bin/bash


cd
mkdir dotfile_bak
mv -f .zshrc .bashrc .vimrc .tmux.conf .tmux.conf.local .editrc dotfile_bak
rm -rf .zshrc .bashrc .vimrc .tmux.conf .tmux.conf.local .editrc

cp -s ~/dotfile/.zshrc ~/
cp -s ~/dotfile/.bashrc ~/
cp -s ~/dotfile/.vimrc ~/
cp -s ~/dotfile/.tmux.conf ~/
cp -s ~/dotfile/.tmux.conf.local ~/
cp -s ~/dotfile/.editrc ~/


