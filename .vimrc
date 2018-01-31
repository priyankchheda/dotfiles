set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set number
set colorcolumn=80
set t_Co=256

set background=dark
colorscheme PaperColor
set laststatus=2
syntax on
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
