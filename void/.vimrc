syntax enable 
set clipboard=unnamedplus
set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set complete-=i
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
Plug 'morhetz/gruvbox'
"Plug 'valloric/youcompleteme'
Plug 'vim-scripts/bash-support.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'kiddos/malokai.vim'
"Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jorengarenar/fauxclip'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neosnippet'
call plug#end()

colorscheme gruvbox


let mapleader=" "
nnoremap <leader>n :NERDTreeFocus<CR>
vmap <leader>c :y*<CR>


"" fauxclip
let g:fauxClip_copy_cmd         = 'xclip -f -i -selection clipboard'
let g:fauxClip_copy_primary_cmd = 'xclip -f -i'

let g:neosnippet#enable_completed_snippet = 1

let g:fauxClip_paste_cmd         = 'xclip -o -selection clipboard'
let g:fauxClip_paste_primary_cmd = 'xclip -o'

"" Run xbindkeys --poll-rc after editing the file
" autocmd BufWritePost ~/.xbindkeysrc !xbindkeys --poll-rc %
 autocmd BufWritePost ~/.bashrc,~/.bash_profile !source .bashrc ,source .bash_profile %
 autocmd BufWritePost ~/.zshrc !source .zshrc %
 autocmd BufWritePOst ~/.zprofile !source .zprofile %
