set number
set relativenumber

set tabstop=4
set shiftwidth=4
set noexpandtab

syntax enable
set background=light
colorscheme solarized

" language-specific settings: tab width is 4 for python as per PEP8
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
