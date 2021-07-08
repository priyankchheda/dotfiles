" importing default settings
source $VIMRUNTIME/defaults.vim

" General VIM Settings
set encoding=utf-8
set nocompatible

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent

set number
set relativenumber
set showcmd
" set cursorline

set laststatus=2
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
set wildignore+=**/env/** " do not commit
set wildignore+=.DS_Store,.git

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" Theme Setting
syntax enable
set background=light
colorscheme PaperColor

" FileType Specific Indentation
augroup FileTypeSpecificAutocommands
	autocmd FileType javascript setlocal ts=2 sts=2 sw=2
    autocmd FileType html setlocal ts=2 sts=2 sw=2
    autocmd FileType css setlocal ts=2 sts=2 sw=2
    autocmd FileType json setlocal ts=2 sts=2 sw=2
augroup END

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

" Highlight Unnecessary White Space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Netrw File Explorer
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
