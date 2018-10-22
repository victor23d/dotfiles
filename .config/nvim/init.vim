"# Transitioning from Vim				*nvim-from-vim*
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
