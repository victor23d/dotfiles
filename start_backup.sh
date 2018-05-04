#! /bin/bash

mkdir ~/dotfile_bak
if [ -e ~/.zshrc ]; then
mv ~/.zshrc ~/dotfile_bak/
fi
if [ -e ~/.bashrc ]; then
mv ~/.bashrc ~/dotfile_bak/
fi
if [ -e ~/.vimrc ]; then
mv ~/.vimrc ~/dotfile_bak/
fi
if [ -e ~/.tmux.conf ]; then
mv ~/.tmux.conf ~/dotfile_bak/
fi
if [ -e ~/.tmux.conf.local ]; then
mv ~/.tmux.conf.local ~/dotfile_bak/
fi
if [ -e ~/.editrc ];then
mv ~/.editrc ~/dotfile_bak/
fi

cp -s ~/dotfile/.zshrc ~/
cp -s ~/dotfile/.bashrc ~/
cp -s ~/dotfile/.vimrc ~/
cp -s ~/dotfile/.tmux.conf ~/
cp -s ~/dotfile/.tmux.conf.local ~/
cp -s ~/dotfile/.editrc ~/


