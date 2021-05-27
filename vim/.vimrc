" Do not use the backup files. They clutter the directory and
" if it matters I use version control.
set nobackup

" Always turn on syntax highlighting
syntax on

" Use line numbers but not relative line numbers.
" Relative line numbers can slow vim down on large
" files and instead of <relative-number>j I can
" always type <absolute-number>gg.
set number

" enable autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" modern backspace behaviour
set backspace=indent,eol,start

set hlsearch	" Highlight all search results
set incsearch	" Searches for strings incrementally

" language-specific settings: tab width is 4 for python as per PEP8
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab