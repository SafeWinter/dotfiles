" Manage plugins with vim-plug.
call plug#begin()
" let g:plug_timeout = 300 " Increase vim-plug timeout for YouCompleteMe.
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
call plug#end()

" Change colorscheme to PaperColor with dark background  
set background=dark
colorscheme PaperColor 

syntax on " Enable syntax highlighting.
filetype plugin indent on " Enable file type based options.
set nocompatible " Don't run in backwards compatible mode.
set autoindent " Respect indentation when starting new line.
set expandtab " Expand tabs to spaces. Essential in Python.
set tabstop=4 " Number of spaces tab is counted for.
set shiftwidth=4 " Number of spaces to use for autoindent.
set backspace=2 " Fix backspace behavior on most terminals.


" Show line numbers
set number 

" Load help files for all plugins
autocmd VimEnter * silent! helptags ALL

" Show last command in the status line.
set showcmd

" Show the real-time status
set ruler

" Enable incremental search
set incsearch
" Enable highlight search
set hlsearch

" Autoclose NERDTree if it's the only open window left.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Avoid NERDTree replaces Netrw
let NERDTreeHijackNetrw=0
packloadall

" map space key to be the leader key
let mapleader = " "

" toggle NERDTree with leader-n
noremap <leader>n :NERDTreeToggle<cr>

" config pylint3 into Vim's :make cmd
autocmd filetype python setlocal makeprg=python3\ -m\ pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\{obj}\ {msg}\"\ %:p
autocmd filetype python setlocal errorformat=%f:%l:\ %m

" Always display status line (or what's the purpose of having powerline?)
set laststatus=2

