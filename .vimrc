" .vimrc
"
" John Van Note
" 2017-03-02
"
" 

" pathogen
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'voxpupuli/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Gundo'

"if v:version >= 703 && has("patch584")Plugin 'Valloric/YouCompleteMe'
"endif

call vundle#end()

filetype plugin indent on

set nocompatible 
set encoding=utf-8
set number
set sc
set autoindent
set smartcase
set ignorecase
set tabstop=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set showcmd
set lazyredraw

set wrap
set textwidth=79
set formatoptions=qrn1

"icall vundle#rc()

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-J> :bprev<CR>  " previous buffer
map <C-K> :bnext<CR>  " next buffer


" solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_diffmode="high"
set laststatus=2 "font
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_show = 0
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#tab_nr_type = 0 " tab number
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'



