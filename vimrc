call pathogen#infect()

let &t_Co=256

set history=700
set laststatus=2

filetype plugin on
filetype indent on

let mapleader = ","

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

set autoread
set nocompatible
set visualbell
set cursorline

set spell

set number
set ruler

set hid

set ignorecase

set smartcase

set showcmd
set showmode

set showmatch

syntax enable
set background=dark
colorscheme solarized

set encoding=utf8
set mouse=a

set nobackup
set nowb
set noswapfile

set hidden

set list
set listchars=tab:▸\ ,trail:·,eol:¬

nmap <leader>l :set list!<CR>

imap jj <Esc>

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
set autoindent

set textwidth=80
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=Black guibg=Black

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set undolevels=1000
set wildignore=*.o,*~,*.pyc

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html

autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype gitcommit setlocal spell textwidth=72

function! StripWhiteSpace ()
  exec ':%s/\s\+$//gc'
endfunction

map ,s :call StripWhiteSpace ()<CR>

function! RSpecFile()
  execute("!clear && rspec --colour -p --format nested " . expand("%p"))
endfunction

map <leader>R :call RSpecFile() <CR>
command! RSpecFile call RSpecFile()

function! RSpecCurrent()
  execute("!clear && rspec --colour -p --format nested " . expand("%p") . ":" . line("."))
endfunction

map <leader>r :call RSpecCurrent() <CR>
command! RSpecCurrent call RSpecCurrent()
