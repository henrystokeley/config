" pathogen
" -----------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" basic vim settings
" -----------------
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
syntax on

set nu
set shiftwidth=4 softtabstop=4 expandtab
set t_Co=256

set hlsearch
set incsearch
set ignorecase smartcase

set listchars=tab:>-,trail:-
set list
set ruler
set backspace=2
set laststatus=2

let g:netrw_browsex_viewer= "open"

"mac - copying/pasting
map =c :w !pbcopy<Enter>
map =p :set paste<Enter>:r !pbpaste<Enter>:set nopaste<Enter>

nmap j gj
nmap k gk
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h

let mapleader=","

" coffeescript
" -----------------
au BufWritePost *.coffee make
autocmd QuickFixCmdPost * nested cwindow | redraw!

" syntastic
" -----------------
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" jedi-vim
" -----------------
let g:jedi#force_py_version = 3
let g:jedi#completions_command = "<C-N>"
autocmd BufReadCmd '*doc*' set bufhidden=delete

"vim-fugitive
" -----------------
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" vim-airline
" -----------------
let g:airline#extensions#tabline#enabled = 1

" vim-colors-solarized
" -----------------
set background=light " or dark
colorscheme solarized
