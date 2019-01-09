" GVim
" Doesn't work, don't know why
" let g:Guifont="DejaVu Sans Mono for Powerline:h16"
" let g:guifont='Consolas:h16:b:cDEFAULT'
" GuiFont Consolas:h12
"
" GVim original setting works
" set guifont=Consolas:h16:b:cDEFAULT
set guifont=Iosevka:h16:b:cDEFAULT
set guifont=Iosevka:h16:cDEFAULT
" start nvim from powershell to debug
" do NOT use nvim qt to edit init.vim, it's a bug on windows

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'


" utils
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'


Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-gtfo'
Plug 'kassio/neoterm'


Plug 'airblade/vim-gitgutter'
" Plug 'SirVer/ultisnips'


" colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'fenetikm/falcon'
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
" Plug 'rainglow/vim'




Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'terryma/vim-expand-region'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'



" format
Plug 'michaeljsmith/vim-indent-object'
Plug 'Chiel92/vim-autoformat'


Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" language supoort
Plug 'w0rp/ale'
Plug 'autozimu/LanguageClient-neovim'
" Plug 'majutsushi/tagbar'


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

Plug 'zchee/deoplete-jedi'



Plug 'hashivim/vim-terraform'




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

" will cause highlight Search and CursorLineNr color invaild
" set background=dark

" set autowrite
set fileencoding=utf-8
set ff=unix


set ignorecase
set smartcase
set magic               " Use magic patterns (extended regular expression) default on
set guioptions=         " remove scrollbars on macvim
set noshowmode          " don't show mode as airline already does
set foldmethod=manual   " set folds by syntax of current language
" can resize windows but can not copy
" set mouse=a
set iskeyword+=-        " treat dash separated words as a word text object


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set shiftround          " Round indent to multiple of shiftwidth
set hidden              " enable hidden unsaved buffers

set visualbell

set textwidth=0
" set textwidth=999
set wrap                " default on
" set list

set number
set relativenumber
set numberwidth=4

set splitbelow
set splitright




" will cause paste improper indent
set nopaste

" will cause <C-e> <C-a> don't work
" set paste

" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif



" colorscheme darkblue
" colorscheme elflord
" colorscheme koehler
" colorscheme murphy
" colorscheme py
" colorscheme lucariox
" colorscheme solarized
" colorscheme gruvbox
" colorscheme desert256
colorscheme janah-v
" colorscheme one       " atom
" set background=dark

" doesn't work
highlight LineNr ctermfg=grey
highlight Search cterm=NONE ctermfg=grey ctermbg=blue 

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight Search guibg=peru guifg=wheat
highlight Search guibg=lightblue guifg=black
highlight CursorLineNr guifg=#FF00FF

"Denite select line color
highlight CursorLine guifg=#000000
" highlight CursorLine guibg=#00aaff
" highlight CursorLine guibg=#ee9900
highlight CursorLine guibg=#dd7777




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" leader maps
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


" <S-CR> works in mintty but not in iTerm2
" inoremap <S-CR> <Esc>o
inoremap <C-CR> <Esc>o

" {
" a data file
" inoremap <S-CR> <Esc>o

" inoremap <C-j> <Esc>o

" cnoremap <S-Insert> <C-R>+
" inoremap <S-Insert> <C-R>+
" }

inoremap <M-Up> <Esc>dd<Up>P
nnoremap <M-Up> <Esc>dd<Up>P
inoremap <M-Down> <Esc>ddp
nnoremap <M-Down> <Esc>ddp
inoremap <M-S-Up> <Esc>YP
inoremap <M-S-Down> <Esc>Yp

" <C-/>
" can not use noremap
imap <C-_> <Esc>mtgcc`ta
nmap <C-_> <Esc>mtgcc`t
vmap <C-_> mtgc`t

" Use set magic instead
" nnoremap / /\v

tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <leader>` :botright Ttoggle<CR><C-w>j
nnoremap <silent> <leader>v` :vertical botright Ttoggle<CR><C-w>l
tnoremap <silent> <leader>` <C-\><C-n> :Ttoggle<CR>


" CWD = Change to Directory of Current file
command CWD cd %:p:h
command PWD cd %:p:h

command Marks Denite mark
command Files Denite file
command Buffers Denite buffer
command Reg Denite register

command M Marks
command F Files
command B Buffers
command R Reg
command G Grep



nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>d :Denite 
nnoremap <leader>F :Denite grep<CR>
nnoremap <leader>m :Denite mark<CR>


nnoremap <silent> <leader>tn :set invrelativenumber<CR>:set invnumber<CR>
nnoremap <silent> <Leader>tg :GitGutterSignsToggle<CR>
nnoremap <silent> <Leader>tl :ALEToggle<CR>
nnoremap <silent> <Leader>ta :set invrelativenumber<CR>:set invnumber<CR>:GitGutterSignsToggle<CR>:ALEToggle<CR>
nnoremap <silent><expr> <Leader>th (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" nnoremap <C-p> :History<CR>



" set backspace=2

" http://vim.wikia.com/wiki/256_colors_in_vim
" set t_Co=256



autocmd BufWrite * set ff=unix



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

    " UTF-8 Unicode text
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



if exists('g:plugs["Limelight"]')
    " Color name (:help cterm-colors) or ANSI code
    let g:limelight_conceal_ctermfg = 'gray'
    let g:limelight_conceal_ctermfg = 240

    " Color name (:help gui-colors) or RGB color
    let g:limelight_conceal_guifg = 'DarkGray'
    let g:limelight_conceal_guifg = '#777777'

    " Default: 0.5
    let g:limelight_default_coefficient = 0.7

    " Number of preceding/following paragraphs to include (default: 0)
    let g:limelight_paragraph_span = 1

    " Beginning/end of paragraph
    "   When there's no empty line between the paragraphs
    "   and each paragraph starts with indentation
    let g:limelight_bop = '^\s'
    let g:limelight_eop = '\ze\n^\s'

    " Highlighting priority (default: 10)
    "   Set it to -1 not to overrule hlsearch
    let g:limelight_priority = -1

    Goyo.vim integration

    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

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



if exists('g:plugs["defx.nvim"]')
    autocmd FileType defx call s:defx_my_settings()
    function! s:defx_my_settings() abort
        " Define mappings
        nnoremap <silent><buffer><expr> <CR>
                    \ defx#do_action('open')
        nnoremap <silent><buffer><expr> Y
                    \ defx#do_action('copy')
        nnoremap <silent><buffer><expr> m
                    \ defx#do_action('move')
        nnoremap <silent><buffer><expr> p
                    \ defx#do_action('paste')
        nnoremap <silent><buffer><expr> l
                    \ defx#do_action('open')
        nnoremap <silent><buffer><expr> E
                    \ defx#do_action('open', 'vsplit')
        nnoremap <silent><buffer><expr> P
                    \ defx#do_action('open', 'pedit')
        nnoremap <silent><buffer><expr> K
                    \ defx#do_action('new_directory')
        nnoremap <silent><buffer><expr> N
                    \ defx#do_action('new_file')
        nnoremap <silent><buffer><expr> d
                    \ defx#do_action('remove')
        nnoremap <silent><buffer><expr> r
                    \ defx#do_action('rename')
        nnoremap <silent><buffer><expr> !
                    \ defx#do_action('execute_command')
        nnoremap <silent><buffer><expr> x
                    \ defx#do_action('execute_system')
        nnoremap <silent><buffer><expr> yy
                    \ defx#do_action('yank_path')
        nnoremap <silent><buffer><expr> .
                    \ defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> ;
                    \ defx#do_action('repeat')
        nnoremap <silent><buffer><expr> h
                    \ defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> ~
                    \ defx#do_action('cd')
        nnoremap <silent><buffer><expr> q
                    \ defx#do_action('quit')
        nnoremap <silent><buffer><expr> <Space>
                    \ defx#do_action('toggle_select') . 'j'
        nnoremap <silent><buffer><expr> *
                    \ defx#do_action('toggle_select_all')
        nnoremap <silent><buffer><expr> j
                    \ line('.') == line('$') ? 'gg' : 'j'
        nnoremap <silent><buffer><expr> k
                    \ line('.') == 1 ? 'G' : 'k'
        nnoremap <silent><buffer><expr> <C-l>
                    \ defx#do_action('redraw')
        nnoremap <silent><buffer><expr> <C-g>
                    \ defx#do_action('print')
        nnoremap <silent><buffer><expr> cd
                    \ defx#do_action('change_vim_cwd')
    endfunction
    " I want to explore the folder where the current file is.
    " Defx `expand('%:p:h')` -search=`expand('%:p')`

    " I want to open defx window like explorer.
    " Defx -split=vertical -winwidth=50 -direction=topleft

    " I want to open file like vimfiler explorer mode.
    " nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')

endif




if exists('g:plugs["deoplete.nvim"]')
    " Enable deoplete when InsertEnter.
    let g:deoplete#enable_at_startup = 0
    autocmd InsertEnter * call deoplete#enable()

    " Use smartcase.
    call deoplete#custom#option('smart_case', v:true)

    " <C-h>, <BS>: close popup and delete backword char.
    " inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
    " inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

    " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
    let g:neosnippet#enable_completed_snippet = 1

    " I want to silence the |ins-completion-menu| messages in the command line
    " You can disable the messages through the 'shortmess' option.
    set shortmess+=c

    " I want to use the auto select feature like |neocomplete|.
    " set completeopt+=noinsert



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
    " imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    " smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    " xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets behavior.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    "
    imap <expr><TAB>
                \ pumvisible() ? "\<Plug>(neosnippet_expand_or_jump)" :
                \ neosnippet#expandable_or_jumpable() ?
                \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    " imap <expr><TAB>
    "             \ pumvisible() ? "\<C-n><Plug>(neosnippet_expand_or_jump)" :
    "             \ neosnippet#expandable_or_jumpable() ?
    "             \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    " imap <expr><C-k>
    "             \ neosnippet#expandable_or_jumpable() ?
    "             \    "\<Plug>(neosnippet_expand_or_jump)" : "\<C-y>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " It can write in this way
    " \ pumvisible() ? "\<C-n>" :
    " \ pumvisible() ? "\<C-k>" :


    " use <CR> to select or close complete
    " imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : pumvisible() ?


    " For conceal markers. quoto will disappear
    " if has('conceal')
    "     set conceallevel=2 concealcursor=niv
    " endif
endif


let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }



if exists('g:plugs["deoplete-jedi"]')
    " g:deoplete#sources#jedi#enable_typeinfo: Enables type information of completions. If you disable it, you will get the faster results. Default: 1
    " g:deoplete#sources#jedi#show_docstring: Shows docstring in preview window. Default: 0
    " g:deoplete#sources#jedi#python_path: Set the Python interpreter path to use for the completion server. It defaults to "python", i.e. the first available python in $PATH. Note: This is different from Neovim's Python (:python) in general.
    " g:deoplete#sources#jedi#extra_path: A list of extra paths to add to sys.path when performing completions.
    " g:deoplete#sources#jedi#ignore_errors: Ignore jedi errors for completions. Default: 0
endif
