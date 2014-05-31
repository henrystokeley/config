filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
syntax on

set hlsearch
set incsearch
set ignorecase smartcase

set listchars=tab:>-,trail:-

set ruler

let g:netrw_browsex_viewer= "open"

"mac - mapping to copy file to clipboard
map =c :w !pbcopy
"mac - copy from clipboard without screwy indenting
map =p :set paste:r !pbpaste :set nopaste

