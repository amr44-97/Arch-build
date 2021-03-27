syntax enable 


set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set complete-=i
set nowrap
set laststatus=2
set wildmenu
set scrolloff=15
set number
set noswapfile
set noerrorbells
set mouse=a
set background=dark
set title
set shell=/bin/bash
set undodir=~/.vim/undodir
set undofile
set completeopt=menuone,noinsert,noselect


call plug#begin('~/.vim/plugged')
"Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-scripts/bash-support.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'kiddos/malokai.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jorengarenar/fauxclip'

call plug#end()

colorscheme gruvbox


let mapleader=" "
nnoremap <leader>n :NERDTreeFocus<CR>

"" fauxclip
let g:fauxClip_copy_cmd         = 'xclip -f -i -selection clipboard'
let g:fauxClip_copy_primary_cmd = 'xclip -f -i'

let g:fauxClip_paste_cmd         = 'xclip -o -selection clipboard'
let g:fauxClip_paste_primary_cmd = 'xclip -o'

