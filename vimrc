" Vimrc file
" Maintainer: Priyank Chheda <p.chheda29@gmail.com>


" importing default settings
source $VIMRUNTIME/defaults.vim

" General VIM Settings
set encoding=utf-8
set nocompatible

set number
set relativenumber
set showcmd

set colorcolumn=80,120
set backspace=indent,eol,start

set incsearch
set hlsearch
set ignorecase
set smartcase

filetype plugin on
let mapleader=','

" VimGrepSearch
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/__pycache__/**
set wildignore+=**/venv/**
set wildignore+=.DS_Store,.git

" setting horizontal and vertical splits
set splitbelow
set splitright

" Theme Setting
syntax enable

" Tab Shortcuts Key Binding
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Split Window Navigation Key Binding
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p

" Buffer Navigation
nnoremap <Leader>l :ls<cr>:b
nnoremap <Leader>z <C-^>

" Grep Search
nnoremap <Leader>wf :grep -FIrni <cword> %
nnoremap <Leader>ff :grep -FIrni '<C-R>"' .
nnoremap <Leader>cf :grep -Fni '<C-R>"' %

" QuickFix
nnoremap <Leader>1 :cprevious<cr>
nnoremap <Leader>2 :cnext<cr>

" Highlight Unnecessary White Space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Netrw File Explorer
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

