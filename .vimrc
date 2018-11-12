call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
"Plug '~/.fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'

Plug 'airblade/vim-gitgutter'
Plug 'rafi/awesome-vim-colorschemes '
Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'

Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }



call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Differences between Nvim and Vim			       *vim-differences*<Paste>
syntax on
syntax enable
filetype plugin indent on
set autoindent
set autoread
set backspace=2 " 2	same as ":set backspace=indent,eol,start"
"set backupdir=.,$XDG_DATA_HOME/nvim/backup
set belloff=all
set complete=.,w,b,u,t
set cscopeverbose
"set directory=$XDG_DATA_HOME/nvim/swap//
if has('nvim')
	set display=lastline,msgsep
endif
set encoding=utf-8
set fillchars=""
" set fsync off
set nofsync
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch

set nolangremap
set laststatus=2
set listchars=tab:>-,trail:-
set nocompatible
set nrformats=bin,hex
set ruler
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set shortmess=filnxtToOF
set showcmd
set sidescroll=1
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttimeoutlen=50
set ttyfast
"set undodir=~/.local/share/nvim/undo
set shada=!,'100,<50,s10,h
set wildmenu



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim option

if has('nvim')
	set termguicolors
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config


" colorscheme darkblue
" colorscheme elflord
" colorscheme koehler
" colorscheme murphy
" colorscheme py
colorscheme desert256
" colorscheme lucariox



" set background=light
" set background=dark
" colorscheme solarized


set fileencoding=utf-8
set ff=unix
set relativenumber

set textwidth=0
set textwidth=999


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" will cause paste improper indent
set nopaste

" will cause <C-e> <C-a> don't work
" set paste

" jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
				\| exe "normal! g'\"" | endif
endif




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maps
let mapleader = "\<Space>"

" Readline key bindings
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt



" Switch to last-active tab
if !exists('g:lasttab')
	let g:lasttab = 1
endif
nmap <Leader><tab> :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Move
inoremap <C-a> <C-o>^
inoremap <C-e> <End>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w

inoremap <C-u> <Esc>d0s
inoremap <C-k> <Esc>C


" Todo
inoremap <S-CR> <Esc>o
" Todo


inoremap <M-Down> <Esc>ddpA
inoremap <M-Up> <Esc>dd<Up>PA

inoremap <C-/> <Esc>mtI# <Esc>`ta
inoremap <C-_> <Esc>mtI# <Esc>`ta

nnoremap <C-_> I# <Esc>
vnoremap <C-_> I# <Esc>

nnoremap / /\v



" CWD = Change to Directory of Current file
command CWD cd %:p:h
command PWD cd %:p:h
command F Files
command B Buffers


" Plug map
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>d :Denite 
nnoremap <C-p> :History<CR>



" set backspace=2

" http://vim.wikia.com/wiki/256_colors_in_vim
" set t_Co=256




" --------------------------------------------------------------------------------
"  Plugin config


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
"
" let g:airline_theme='badcat' " doesn't work
let g:airline_theme='deus'

" set runtimepath^=~/.vim/pack/foo/start/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMRU'


" nerdtree{{{
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" resolve :E conflict
command E Ex

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'
"}}}


" fzf {{{
let g:fzf_action = {
			\ 'enter': 'tab split',
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-x': 'split',
			\ 'ctrl-v': 'vsplit' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})



"}}}

" Syntastic Recommended settings
set statusline+=%#warningmsg#
" when not submodule update, this will cause error SyntasticStatuslineFlag()
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" python mode
let g:pymode_python = 'python3'


" YCM
let g:ycm_key_select_completion = '<Tab>'



" denite {{{
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<C-[>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<CR>', '<denite:do_action:tabopen>', 'noremap')
call denite#custom#map('normal', '<Esc>', '<NOP>', 'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', '<CR>', '<denite:do_action:tabopen>', 'noremap')

call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>', 'noremap')

nnoremap <C-p> :<C-u>Denite file_old<CR>
"}}}


" deplete {{{
let g:deoplete#enable_at_startup = 1
" reset 50% winheight on window resize
augroup deniteresize
	autocmd!
	autocmd VimResized,VimEnter * call denite#custom#option('default',
				\'winheight', winheight(0) / 2)
augroup end
"}}}
