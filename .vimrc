" GVim
" Doesn't work, don't know why
" let g:Guifont="DejaVu Sans Mono for Powerline:h16"
" let g:guifont='Consolas:h16:b:cDEFAULT'
" GuiFont Consolas:h12
"
" GVim original setting works
" set guifont=Consolas:h16:b:cDEFAULT
set guifont=Iosevka:h16:b:cDEFAULT
" start nvim from powershell to debug
" do NOT use nvim qt to edit init.vim, it's a bug on windows

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
" Plug 'ctrlpvim/ctrlp.vim'


" utils
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'

Plug 'vim-syntastic/syntastic'

Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-gtfo'



Plug 'airblade/vim-gitgutter'
" Plug 'SirVer/ultisnips'


" colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'fenetikm/falcon'
Plug 'liuchengxu/space-vim-dark'



Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
" Plug 'rainglow/vim'


" format
Plug 'michaeljsmith/vim-indent-object'
Plug 'Chiel92/vim-autoformat'


Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" language supoort
" Plug 'majutsushi/tagbar'
Plug 'autozimu/LanguageClient-neovim'


" come with deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Konfekt/FastFold'


" language specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
" Plug 'jodosha/vim-godebug'


" Plug 'hashivim/vim-terraform.git'



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
set wildmenu



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim option

if has('nvim')
    set termguicolors
    set shada=!,'100,<50,s10,h
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config


" colorscheme darkblue
" colorscheme elflord
" colorscheme koehler
" colorscheme murphy
" colorscheme py
" colorscheme lucariox
" colorscheme solarized
" colorscheme gruvbox
" colorscheme desert256
colorscheme janah



" set background=light
set background=dark


set fileencoding=utf-8
set ff=unix
set number
set relativenumber

set textwidth=0
set textwidth=999

set ignorecase


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
" inoremap <C-k> <Esc>C


" Todo
" inoremap <S-CR> <Esc>o
" Todo


inoremap <M-Up> <Esc>dd<Up>PA
inoremap <M-Down> <Esc>ddpA
inoremap <S-Up> <Esc>YP
inoremap <S-Down> <Esc>Yp

imap <C-_> <Esc>mtgcc `ta
nmap <C-_> <Esc>mtgcc `ta
inoremap <C-j> <Esc>o

nnoremap <M-C-F> :Denite grep<CR>

nnoremap / /\v

cnoremap <S-Insert> +
inoremap <S-Insert> +



" CWD = Change to Directory of Current file
command CWD cd %:p:h
command PWD cd %:p:h
command F Files
command B Buffers


" Plug map
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>d :Denite 
nnoremap <leader>tn :set norelativenumber<CR>
nnoremap <C-p> :History<CR>



" set backspace=2

" http://vim.wikia.com/wiki/256_colors_in_vim
" set t_Co=256




" --------------------------------------------------------------------------------
"  Plugin config

" python mode
let g:pymode_python = 'python3'


if exists('g:plugs["vim-airline"]')
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline_powerline_fonts = 1
    "
    " let g:airline_theme='badcat' " doesn't work
    let g:airline_theme='deus'

    " set runtimepath^=~/.vim/pack/foo/start/ctrlp.vim
    let g:ctrlp_cmd = 'CtrlPMRU'
endif


if exists('g:plugs["nerdtree"]')
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
endif


if exists('g:plugs["fzf.vim"]')
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
endif



if exists('g:plugs["syntastic"]')
    " nerdtree{{{
    " Syntastic Recommended settings
    set statusline+=%#warningmsg#
    " when not submodule update, this will cause error SyntasticStatuslineFlag()
    " set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    "let g:syntastic_always_populate_loc_list = 1
    "let g:syntastic_auto_loc_list = 1
    "let g:syntastic_check_on_open = 1
    "let g:syntastic_check_on_wq = 0
endif




if exists('g:plugs["denite.nvim"]')
    " reset 50% winheight on window resize
    augroup deniteresize
        autocmd!
        autocmd VimResized,VimEnter * call denite#custom#option('default',
                    \'winheight', winheight(0) / 2)
    augroup end

    call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
    call denite#custom#map('insert', '<C-[>', '<denite:enter_mode:normal>', 'noremap')
    call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>', 'noremap')
    call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>', 'noremap')
    call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
    call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
    call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
    " call denite#custom#map('insert', '<CR>', '<denite:do_action:tabopen>', 'noremap')
    call denite#custom#map('normal', '<Esc>', '<NOP>', 'noremap')
    call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>', 'noremap')
    call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>', 'noremap')
    " call denite#custom#map('normal', '<CR>', '<denite:do_action:tabopen>', 'noremap')

    call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>', 'noremap')

    nnoremap <C-p> :<C-u>Denite file_old<CR>
endif




if exists('g:plugs["deoplete.nvim"]')
    " Enable deoplete when InsertEnter.
    let g:deoplete#enable_at_startup = 0
    autocmd InsertEnter * call deoplete#enable()

    " Use smartcase.
    call deoplete#custom#option('smart_case', v:true)

    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function() abort
        return deoplete#close_popup() . "\<CR>"
    endfunction<Paste>

    " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
    let g:neosnippet#enable_completed_snippet = 1

    " I want to silence the |ins-completion-menu| messages in the command line
    " You can disable the messages through the 'shortmess' option.
    set shortmess+=c

    " I want to use the auto select feature like |neocomplete|.
    set completeopt+=noinsert



    " I want to close the preview window after completion is done.
    autocmd CompleteDone * silent! pclose!
    " Or
    autocmd InsertLeave * silent! pclose!

    " control the colors used for popup menu using highlight
    highlight Pmenu ctermbg=8 guibg=#606060
    highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
    highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
endif




if exists('g:plugs["deoplete-go"]')
    " TODO

    let g:deoplete#sources#go#gocode_binary = ''
    let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

    " deoplete.nvim recommend
    set completeopt+=noselect
endif


if exists('g:plugs["neosnippet.vim"]')
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets behavior.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    imap <expr><TAB>
                \ pumvisible() ? "\<C-n><Plug>(neosnippet_expand_or_jump)" :
                \ neosnippet#expandable_or_jumpable() ?
                \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    imap <expr><C-k>
                \ neosnippet#expandable_or_jumpable() ?
                \    "\<Plug>(neosnippet_expand_or_jump)" : "\<C-y>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " It can write in this way
    " \ pumvisible() ? "\<C-n>" :
    " \ pumvisible() ? "\<C-k>" :

    " Conflict with auto-pairs, this is a bug.
    " imap <expr><CR>
    "  \ pumvisible() ? "\<C-k>" :
    "  \ neosnippet#expandable_or_jumpable() ?
    "  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


    " For conceal markers. quoto will disappear
    " if has('conceal')
    "     set conceallevel=2 concealcursor=niv
    " endif
endif
