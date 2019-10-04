" General VIM sSettings
set encoding=utf-8
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set number
set colorcolumn=80
set t_Co=256
set backspace=indent,eol,start
let mapleader=','

" Smart search while searching
set ignorecase
set smartcase

" Show partial vim command
set showcmd

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'
Plug 'junegunn/limelight.vim'
Plug 'mattn/emmet-vim'
Plug 'irrationalistic/vim-tasks'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-python/python-syntax'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
call plug#end()

" Theme Setting
syntax enable
set background=dark
colorscheme PaperColor

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

" Highlight Unnecessary White Space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Netrw File Explorer
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" MacVim GUI setting
if has("gui_macvim")
	colorscheme onedark
	set guifont=Fira\ Code\ Regular:h11
	set guioptions=
	set linespace=2
endif

" Golang settings
let g:go_fmt_command = "goimports"

" YouCompleteMe settings
let g:ycm_python_binary_path = "python3"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
