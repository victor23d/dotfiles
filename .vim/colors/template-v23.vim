set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="v23-template"
let g:colors_name="common-go"
guifg={color-name}					*highlight-guifg*
guibg={color-name}					*highlight-guibg*
guisp={color-name}					*highlight-guisp*
	(guisp) color to use in the GUI.  "guisp" is used for undercurl
	and underline.
ColorColumn	used for the columns set with 'colorcolumn'
							*hl-Conceal*
Conceal		placeholder characters substituted for concealed
		text (see 'conceallevel')
							*hl-Cursor*
Cursor		character under the cursor
							*hl-CursorIM*
CursorIM	like Cursor, but used when in IME mode |CursorIM|
							*hl-CursorColumn*
CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
							*hl-CursorLine*
CursorLine	Screen-line at the cursor, when 'cursorline' is set.
		Low-priority if foreground (ctermfg OR guifg) is not set.
							*hl-Directory*
Directory	directory names (and other special names in listings)
							*hl-DiffAdd*
DiffAdd		diff mode: Added line |diff.txt|
							*hl-DiffChange*
DiffChange	diff mode: Changed line |diff.txt|
							*hl-DiffDelete*
DiffDelete	diff mode: Deleted line |diff.txt|
							*hl-DiffText*
DiffText	diff mode: Changed text within a changed line |diff.txt|
							*hl-EndOfBuffer*
EndOfBuffer	filler lines (~) after the end of the buffer.
		By default, this is highlighted like |hl-NonText|.
							*hl-TermCursor*
TermCursor	cursor in a focused terminal
							*hl-TermCursorNC*
TermCursorNC	cursor in an unfocused terminal
							*hl-ErrorMsg*
ErrorMsg	error messages on the command line
							*hl-VertSplit*
VertSplit	the column separating vertically split windows
							*hl-Folded*
Folded		line used for closed folds
							*hl-FoldColumn*
FoldColumn	'foldcolumn'
							*hl-SignColumn*
SignColumn	column where |signs| are displayed
							*hl-IncSearch*
IncSearch	'incsearch' highlighting; also used for the text replaced with
		":s///c"
							*hl-Substitute*
Substitute	|:substitute| replacement text highlighting

							*hl-LineNr*
LineNr		Line number for ":number" and ":#" commands, and when 'number'
		or 'relativenumber' option is set.
							*hl-CursorLineNr*
CursorLineNr	Like LineNr when 'cursorline' or 'relativenumber' is set for
		the cursor line.
							*hl-MatchParen*
MatchParen	The character under the cursor or just before it, if it
		is a paired bracket, and its match. |pi_paren.txt|

							*hl-ModeMsg*
ModeMsg		'showmode' message (e.g., "-- INSERT --")
							*hl-MsgSeparator*
MsgSeparator	Separator for scrolled messages, `msgsep` flag of 'display'
							*hl-MoreMsg*
MoreMsg		|more-prompt|
							*hl-NonText*
NonText		'@' at the end of the window, characters from 'showbreak' 
		and other characters that do not really exist in the text 
		(e.g., ">" displayed when a double-wide character doesn't 
		fit at the end of the line). See also |hl-EndOfBuffer|.
							*hl-Normal*
Normal		normal text
							*hl-NormalFloat*
NormalFloat	Normal text in floating windows.
							*hl-NormalNC*
NormalNC	normal text in non-current windows
							*hl-Pmenu*
Pmenu		Popup menu: normal item.
							*hl-PmenuSel*
PmenuSel	Popup menu: selected item.
							*hl-PmenuSbar*
PmenuSbar	Popup menu: scrollbar.
							*hl-PmenuThumb*
PmenuThumb	Popup menu: Thumb of the scrollbar.
							*hl-Question*
Question	|hit-enter| prompt and yes/no questions
							*hl-QuickFixLine*
QuickFixLine	Current |quickfix| item in the quickfix window. Combined with
                |hl-CursorLine| when the cursor is there.
							*hl-Search*
Search		Last search pattern highlighting (see 'hlsearch').
		Also used for similar items that need to stand out.
							*hl-SpecialKey*
SpecialKey	Unprintable characters: text displayed differently from what
		it really is. But not 'listchars' whitespace. |hl-Whitespace|
							*hl-SpellBad*
SpellBad	Word that is not recognized by the spellchecker. |spell|
		Combined with the highlighting used otherwise.
							*hl-SpellCap*
SpellCap	Word that should start with a capital. |spell|
		Combined with the highlighting used otherwise.
							*hl-SpellLocal*
SpellLocal	Word that is recognized by the spellchecker as one that is
		used in another region. |spell|
		Combined with the highlighting used otherwise.
							*hl-SpellRare*
SpellRare	Word that is recognized by the spellchecker as one that is
		hardly ever used. |spell|
		Combined with the highlighting used otherwise.
							*hl-StatusLine*
StatusLine	status line of current window
							*hl-StatusLineNC*
StatusLineNC	status lines of not-current windows
		Note: if this is equal to "StatusLine" Vim will use "^^^" in
		the status line of the current window.
							*hl-StatusLineTerm*
StatusLineTerm	status line of current window, if it is a |terminal| window.
							*hl-StatusLineTermNC*
StatusLineTermNC   status lines of not-current windows that is a |terminal|
		window.
							*hl-TabLine*
TabLine		tab pages line, not active tab page label
							*hl-TabLineFill*
TabLineFill	tab pages line, where there are no labels
							*hl-TabLineSel*
TabLineSel	tab pages line, active tab page label
							*hl-Title*
Title		titles for output from ":set all", ":autocmd" etc.
							*hl-Visual*
Visual		Visual mode selection
 							*hl-VisualNOS*
VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
							*hl-WarningMsg*
WarningMsg	warning messages
							*hl-Whitespace*
Whitespace	"nbsp", "space", "tab" and "trail" in 'listchars'
							*hl-WildMenu*
WildMenu	current match in 'wildmenu' completion

					*hl-User1* *hl-User1..9* *hl-User9*
The 'statusline' syntax allows the use of 9 different highlights in the
statusline and ruler (via 'rulerformat').  The names are User1 to User9.

For the GUI you can use the following groups to set the colors for the menu,
scrollbars and tooltips.  They don't have defaults.  This doesn't work for the
Win32 GUI.  Only three highlight arguments have any effect here: font, guibg,
and guifg.

							*hl-Menu*
Menu		Current font, background and foreground colors of the menus.
		Also used for the toolbar.
		Applicable highlight arguments: font, guibg, guifg.

							*hl-Scrollbar*
Scrollbar	Current background and foreground of the main window's
		scrollbars.
		Applicable highlight arguments: guibg, guifg.

							*hl-Tooltip*
Tooltip		Current font, background and foreground of the tooltips.
		Applicable highlight arguments: font, guibg, guifg.




================================================================================
https://github.com/neovim/neovim/tree/master/runtime/syntax

" contains a lot of Languages, python, js, java, rust


go.vim

https://github.com/neovim/neovim/blob/master/runtime/syntax/go.vim

" Vim syntax file
" Language:	Go
" Maintainer:	David Barnett (https://github.com/google/vim-ft-go)
" Last Change:	2014 Aug 16

" Options:
"   There are some options for customizing the highlighting; the recommended
"   settings are the default values, but you can write:
"     let OPTION_NAME = 0
"   in your ~/.vimrc file to disable particular options. You can also write:
"     let OPTION_NAME = 1
"   to enable particular options. At present, all options default to on.
"
"   - g:go_highlight_array_whitespace_error
"     Highlights white space after "[]".
"   - g:go_highlight_chan_whitespace_error
"     Highlights white space around the communications operator that don't
"     follow the standard style.
"   - g:go_highlight_extra_types
"     Highlights commonly used library types (io.Reader, etc.).
"   - g:go_highlight_space_tab_error
"     Highlights instances of tabs following spaces.
"   - g:go_highlight_trailing_whitespace_error
"     Highlights trailing white space.

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

if !exists('g:go_highlight_array_whitespace_error')
  let g:go_highlight_array_whitespace_error = 1
endif
if !exists('g:go_highlight_chan_whitespace_error')
  let g:go_highlight_chan_whitespace_error = 1
endif
if !exists('g:go_highlight_extra_types')
  let g:go_highlight_extra_types = 1
endif
if !exists('g:go_highlight_space_tab_error')
  let g:go_highlight_space_tab_error = 1
endif
if !exists('g:go_highlight_trailing_whitespace_error')
  let g:go_highlight_trailing_whitespace_error = 1
endif

syn case match

syn keyword     goDirective         package import
syn keyword     goDeclaration       var const type
syn keyword     goDeclType          struct interface

hi def link     goDirective         Statement
hi def link     goDeclaration       Keyword
hi def link     goDeclType          Keyword

" Keywords within functions
syn keyword     goStatement         defer go goto return break continue fallthrough
syn keyword     goConditional       if else switch select
syn keyword     goLabel             case default
syn keyword     goRepeat            for range

hi def link     goStatement         Statement
hi def link     goConditional       Conditional
hi def link     goLabel             Label
hi def link     goRepeat            Repeat

" Predefined types
syn keyword     goType              chan map bool string error
syn keyword     goSignedInts        int int8 int16 int32 int64 rune
syn keyword     goUnsignedInts      byte uint uint8 uint16 uint32 uint64 uintptr
syn keyword     goFloats            float32 float64
syn keyword     goComplexes         complex64 complex128

hi def link     goType              Type
hi def link     goSignedInts        Type
hi def link     goUnsignedInts      Type
hi def link     goFloats            Type
hi def link     goComplexes         Type

" Treat func specially: it's a declaration at the start of a line, but a type
" elsewhere. Order matters here.
syn match       goType              /\<func\>/
syn match       goDeclaration       /^func\>/

" Predefined functions and values
syn keyword     goBuiltins          append cap close complex copy delete imag len
syn keyword     goBuiltins          make new panic print println real recover
syn keyword     goConstants         iota true false nil

hi def link     goBuiltins          Keyword
hi def link     goConstants         Keyword

" Comments; their contents
syn keyword     goTodo              contained TODO FIXME XXX BUG
syn cluster     goCommentGroup      contains=goTodo
syn region      goComment           start="/\*" end="\*/" contains=@goCommentGroup,@Spell
syn region      goComment           start="//" end="$" contains=@goCommentGroup,@Spell

hi def link     goComment           Comment
hi def link     goTodo              Todo

" Go escapes
syn match       goEscapeOctal       display contained "\\[0-7]\{3}"
syn match       goEscapeC           display contained +\\[abfnrtv\\'"]+
syn match       goEscapeX           display contained "\\x\x\{2}"
syn match       goEscapeU           display contained "\\u\x\{4}"
syn match       goEscapeBigU        display contained "\\U\x\{8}"
syn match       goEscapeError       display contained +\\[^0-7xuUabfnrtv\\'"]+

hi def link     goEscapeOctal       goSpecialString
hi def link     goEscapeC           goSpecialString
hi def link     goEscapeX           goSpecialString
hi def link     goEscapeU           goSpecialString
hi def link     goEscapeBigU        goSpecialString
hi def link     goSpecialString     Special
hi def link     goEscapeError       Error

" Strings and their contents
syn cluster     goStringGroup       contains=goEscapeOctal,goEscapeC,goEscapeX,goEscapeU,goEscapeBigU,goEscapeError
syn region      goString            start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@goStringGroup
syn region      goRawString         start=+`+ end=+`+

hi def link     goString            String
hi def link     goRawString         String

" Characters; their contents
syn cluster     goCharacterGroup    contains=goEscapeOctal,goEscapeC,goEscapeX,goEscapeU,goEscapeBigU
syn region      goCharacter         start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=@goCharacterGroup

hi def link     goCharacter         Character

" Regions
syn region      goBlock             start="{" end="}" transparent fold
syn region      goParen             start='(' end=')' transparent

" Integers
syn match       goDecimalInt        "\<\d\+\([Ee]\d\+\)\?\>"
syn match       goHexadecimalInt    "\<0x\x\+\>"
syn match       goOctalInt          "\<0\o\+\>"
syn match       goOctalError        "\<0\o*[89]\d*\>"

hi def link     goDecimalInt        Integer
hi def link     goHexadecimalInt    Integer
hi def link     goOctalInt          Integer
hi def link     Integer             Number

" Floating point
syn match       goFloat             "\<\d\+\.\d*\([Ee][-+]\d\+\)\?\>"
syn match       goFloat             "\<\.\d\+\([Ee][-+]\d\+\)\?\>"
syn match       goFloat             "\<\d\+[Ee][-+]\d\+\>"

hi def link     goFloat             Float

" Imaginary literals
syn match       goImaginary         "\<\d\+i\>"
syn match       goImaginary         "\<\d\+\.\d*\([Ee][-+]\d\+\)\?i\>"
syn match       goImaginary         "\<\.\d\+\([Ee][-+]\d\+\)\?i\>"
syn match       goImaginary         "\<\d\+[Ee][-+]\d\+i\>"

hi def link     goImaginary         Number

" Spaces after "[]"
if go_highlight_array_whitespace_error != 0
  syn match goSpaceError display "\(\[\]\)\@<=\s\+"
endif

" Spacing errors around the 'chan' keyword
if go_highlight_chan_whitespace_error != 0
  " receive-only annotation on chan type
  syn match goSpaceError display "\(<-\)\@<=\s\+\(chan\>\)\@="
  " send-only annotation on chan type
  syn match goSpaceError display "\(\<chan\)\@<=\s\+\(<-\)\@="
  " value-ignoring receives in a few contexts
  syn match goSpaceError display "\(\(^\|[={(,;]\)\s*<-\)\@<=\s\+"
endif

" Extra types commonly seen
if go_highlight_extra_types != 0
  syn match goExtraType /\<bytes\.\(Buffer\)\>/
  syn match goExtraType /\<io\.\(Reader\|Writer\|ReadWriter\|ReadWriteCloser\)\>/
  syn match goExtraType /\<reflect\.\(Kind\|Type\|Value\)\>/
  syn match goExtraType /\<unsafe\.Pointer\>/
endif

" Space-tab error
if go_highlight_space_tab_error != 0
  syn match goSpaceError display " \+\t"me=e-1
endif

" Trailing white space error
if go_highlight_trailing_whitespace_error != 0
  syn match goSpaceError display excludenl "\s\+$"
endif

hi def link     goExtraType         Type
hi def link     goSpaceError        Error

" Search backwards for a global declaration to start processing the syntax.
"syn sync match goSync grouphere NONE /^\(const\|var\|type\|func\)\>/

" There's a bug in the implementation of grouphere. For now, use the
" following as a more expensive/less precise workaround.
syn sync minlines=500

let b:current_syntax = 'go'

" vim: sw=2 sts=2 et
