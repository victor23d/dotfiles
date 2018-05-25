" " --------------------------------------------------------------------------------
" " Windos GVim config
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin
" 
" set diffexpr=MyDiff()
" function MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg2 = v:fname_new
"   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"   let arg3 = v:fname_out
"   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"   if $VIMRUNTIME =~ ' '
"     if &sh =~ '\<cmd'
"       if empty(&shellxquote)
"         let l:shxq_sav = ''
"         set shellxquote&
"       endif
"       let cmd = '"' . $VIMRUNTIME . '\diff"'
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
"   if exists('l:shxq_sav')
"     let &shellxquote=l:shxq_sav
"   endif
" endfunction
" 
" " GVim
" " set guifont=Consolas:h16:b:cDEFAULT
" set guifont=Iosevka:h16:b:cDEFAULT
" 
" :set guioptions-=T  "remove toolbar
" :set guioptions-=r  "remove right-hand scroll bar
" :set guioptions-=L  "remove left-hand scroll bar
" 
" set nobackup



" -------------------------------------------------------------------------------- 
" Linux config

" colorscheme darkblue
" colorscheme elflord
" colorscheme koehler
" colorscheme murphy
 colorscheme py
" colorscheme lucariox

syntax enable
" set background=light
" set background=dark
" colorscheme solarized


set encoding=utf-8
set fileencoding=utf-8
set ff=unix


set textwidth=0
set textwidth=999


" Readline key bindings

" Move
inoremap <C-a> <Home>
inoremap <C-e> <End>
"inoremap <C-p> <Up>
"inoremap <C-n> <Down>
"inoremap <C-b> <Left>
"inoremap <C-f> <Right>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w

" delete
" kill ring
" only one ring can paste, a small bug is that if kill first character then
" previous word will be killed
" reg t and u are used for kill ring
"
inoremap <C-w> <Esc>"tdb"us
inoremap <C-u> <Esc>"td0"us

" paste
inoremap <C-y> <Esc>"tp"upa
"

"inoremap <C-w> <Esc>dbs
"inoremap <C-u> <Esc>d0s
inoremap <C-k> <Esc>C


" IDE
inoremap <S-CR> <Esc>o

inoremap <S-M-Down> <Esc>ddpA
inoremap <S-M-Up> <Esc>dd<Up>PA

inoremap <C-/> <Esc>mtI#<Esc>`ta
inoremap <C-_> <Esc>mtI#<Esc>`ta

nmap <C-_> I#<Esc>
vmap <C-_> I#<Esc>


" CDC = Change to Directory of Current file
command PWD cd %:p:h

" nmap / /\v

 nnoremap / /\v


" http://vim.wikia.com/wiki/256_colors_in_vim
set t_Co=256

let g:airline_powerline_fonts = 1


