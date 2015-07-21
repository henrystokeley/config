"pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

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
map =c :w !pbcopy<Enter>
"mac - copy from clipboard without screwy indenting
map =p :set paste:r !pbpaste :set nopaste

set nu
set shiftwidth=4 softtabstop=4 expandtab

nmap _o :set paste!<CR>
nmap j gj
nmap k gk

set t_Co=256
