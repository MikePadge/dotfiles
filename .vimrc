set nocompatible
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Bundles Here
Bundle 'plasticboy/vim-markdown'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'

call vundle#end()

filetype plugin indent on
"
"" Brief help
" :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.


" Settings
set number
syntax enable
set background=dark

" Yep, spaces
" set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" No error noise on
" bad key-strokes, etc
set visualbell
set noerrorbells

" Set leader to comma
let mapleader = ","
let g:mapleader = ","

" Save via ',w'
nmap <leader>w :w!<cr>
nmap <leader>q :cq<cr>
vmap <leader>, :w !pbcopy<cr><cr>
" QuickSave exit ,x
nmap <leader>x :x<cr>

" 
nmap <leader>p :set paste<cr>
nmap <leader>n :noh<cr>
nmap <leader>pp :set nopaste<cr>
nnoremap <leader>j <c-w>h<cr>
nnoremap <leader>k <c-w>l<cr>
nnoremap <leader>c <c-w>c<cr>
nnoremap <leader>l <c-w>j<cr>
nnoremap <leader>h <c-w>k<cr>
nnoremap <leader>d <c-d><cr>
nnoremap <leader>u <c-u><cr>


" Run phpunit via ',t'
"map <Leader>t :!phpunit %<cr>
"nmap <Leader>tt :!phpunit<cr>

" Exit insert mode via 'jj'
imap ;j <esc>

" Ctrl-n for NERDTree
" Ctrl-ww to switch between NERDTree and panes
nmap <leader>t :NERDTree<cr>

" CtrlP to open CtrlP
" Ctrl-T to open highlighted file in new tab

" User older-School (more font-friendly) directory
" arrows in directory listings
" Use this if set encoding utf-8 doesn't fix this issue:
" http://superuser.com/questions/401413/cant-open-folders-in-linux-nerdtree-vim
" https://github.com/scrooloose/nerdtree/issues/108
" let NERDTreeDirArrows=0

" Remove trailing spaces
" Within PHP files
autocmd BufWritePre *.php :%s/\s\+$//e

" Open composer.json file easily
" within a new tab via ',lc'
nmap <leader>lc :tabe composer.json<cr>

" Quick Ruby Run
nmap <leader>r :! clear; ruby %<CR>

" Remove folding of markdown
" as per https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" Airline on all the time
set laststatus=2


set ignorecase
set smartcase

set incsearch
set hlsearch

set title

set autoindent
set wrap
set linebreak
set nolist

" test section

" attempts to turn off automatic comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
