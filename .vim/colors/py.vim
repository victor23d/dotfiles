
hi clear
if exists("syntax_on")
  syntax reset
endif

"Load the 'base' colorscheme - the one you want to alter
runtime colors/desert256.vim

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "py"

"Clear the colors for any items that you don't like
hi clear Normal

"Set up your new & improved colors
hi StatusLine guifg=black guibg=white
hi StatusLineNC guifg=LightCyan guibg=blue gui=bold

hi clear Normal
" hi Normal ctermfg=255 ctermbg=black 
" hi Normal ctermfg=254 ctermbg=black 
hi Normal ctermfg=253 ctermbg=black 

hi Comment ctermfg=46
" hi Comment ctermfg=10

" hi String ctermfg=33
" hi String ctermfg=39
" hi String ctermfg=63
" hi String ctermfg=69
" hi String ctermfg=81
" hi String ctermfg=87

" hi String ctermfg=75
" hi String ctermfg=45

hi Constant ctermfg = 45

" hi Keyword ctermfg=231

hi Statement ctermfg=14
hi Statement ctermfg=231 cterm=bold

" hi Function ctermfg=190
" hi Identifier ctermfg=190
hi Identifier ctermfg=226

hi pythonAttribute ctermfg=170


