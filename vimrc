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

set colorcolumn=120
set backspace=indent,eol,start
set nostartofline

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
set wildmode=longest:list,full
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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

" theme setting
syntax enable
set background=light
colorscheme PaperColor
hi StatusLineNC ctermbg=249 ctermfg=white
hi StatusLine ctermbg=238 ctermfg=white

" Split Window Navigation Key Binding
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" buffer quick navigation
nnoremap <leader>z <c-^>

" copy via less
nnoremap <leader>r :!less %<cr>

" quickfix
nnoremap <leader>1 :cprevious<cr>
nnoremap <leader>2 :cnext<cr>

" find and grep
nnoremap <leader>F :Rg '\b<cword>\b'<cr>
nnoremap <leader>f :Rg 
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
"nnoremap <leader>f :grep -Irn '\b<cword>\b' .<cr>
"nnoremap <leader>p :find 

" execute bash command
nnoremap <leader>e yy<esc>:!<c-r>"<bs><cr>

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
