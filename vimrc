call pathogen#infect()
set history=700

filetype plugin on
filetype indent on

let mapleader = ","
let g:neocomplcache_enable_at_startup = 1

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
map <Leader>t :w\|!rspec spec<cr>

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
set mat=5

set nowrap
set linebreak

set textwidth=80

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set undolevels=1000
set wildignore=*.o,*~,*.pyc

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

function! StripWhiteSpace ()
  exec ':%s/\s\+$//gc'
endfunction

map ,s :call StripWhiteSpace ()<CR>
