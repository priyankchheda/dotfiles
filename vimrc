" vimrc file
" maintainer: priyank chheda <p.chheda29@gmail.com>


" importing default settings
source $VIMRUNTIME/defaults.vim

" general vim settings
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

set wrap
set linebreak
set nolist

filetype plugin on
let mapleader=','

" vimgrep search
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/__pycache__/**
set wildignore+=**/venv/**
set wildignore+=.DS_Store,.git

" setting horizontal and vertical splits
set splitbelow
set splitright

" plugins
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" theme setting
syntax enable
set background=light
colorscheme PaperColor

" tab shortcuts key binding
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>

" Split Window Navigation Key Binding
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" clipboard
noremap <leader>y "*y
noremap <leader>p "*p

" copy via less
nnoremap <leader>r :!less %<cr>

" buffer navigation
nnoremap <leader>l :Buffers<cr>
nnoremap <leader>z <c-^>

" comment / uncomment
" nnoremap <leader>/ :s/^/# /<cr>
nnoremap <leader>/ :normal I# <cr>
nnoremap <leader>\ :normal ^xx<cr>
vnoremap <leader>/ :normal I# <cr>
vnoremap <leader>\ :normal ^xx<cr>

" fzf settings
nnoremap <leader>p :GFiles<cr>
nnoremap <leader>f :Rg! 
let g:fzf_preview_window = ['up:70%']

" quickfix
nnoremap <leader>1 :cprevious<cr>
nnoremap <leader>2 :cnext<cr>

" set paste toggle
function! TogglePaste()
    if(&paste == 0)
        set paste
        echo "Paste Mode Enabled"
    else
        set nopaste
        echo "Paste Mode Disabled"
    endif
endfunction

nnoremap <leader>; :call TogglePaste()<cr>

" highlight unnecessary white space
highlight extrawhitespace ctermbg=red guibg=red
match extrawhitespace /\s\+$/

" netrw file explorer
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

