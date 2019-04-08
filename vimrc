" General VIM sSettings
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set number
set colorcolumn=80
set t_Co=256

let mapleader=','

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
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

" Highlight Unnecessary White Space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" MacVim GUI setting
if has("gui_macvim")
	colorscheme onedark
	set guifont=Fira\ Code\ Regular:h11
	set guioptions=
	set linespace=2
endif

" Golang settings
let g:go_fmt_command = "goimports"
