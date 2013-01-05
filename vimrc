call pathogen#infect()

set history=700

filetype plugin on
filetype indent on

let mapleader = ","

set autoread
set nocompatible
set visualbell

set number
set ruler

set hid

set ignorecase

set smartcase

set showcmd
set showmode

set showmatch

syntax enable

set encoding=utf8

set nobackup
set nowb
set noswapfile

set hidden

set list
set listchars=tab:▸\ ,trail:·,eol:¬

nmap <leader>l :set list!<CR>

nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

set expandtab
set smarttab

set shiftwidth=2
set softtabstop=2
set tabstop=2

set hlsearch
set incsearch

set nowrap
set linebreak

set textwidth=80

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set undolevels=1000
set wildignore=*.o,*~,*.pyc

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

function! StripWhiteSpace ()
  exect ':$s/ \+$//gc'
endfunction
map ,s :call StripWhiteSpace ()<CR>
