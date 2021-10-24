set nocompatible

syntax on

set number
set hlsearch
exec "nohlsearch"
set incsearch
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
"set relativenumber
set cursorline
set wrap
set linebreak
set wrapmargin=2
set scrolloff=2
set laststatus=2
set ruler
set showmatch
set ignorecase
set smartcase
set spell spelllang=en_us
set noerrorbells
set visualbell
set history=1000
set autoread
set listchars=tab:»■,trail:■
set list

filetype indent on

colorscheme snazzy

let mapleader=" "

map S :w<CR>
map Q :q<CR>

map <C-l> <C-w>v
map <C-s> <C-w>s
map <LEADER>j <C-w>j
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
