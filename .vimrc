" Automate vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

" Cancel the compatibility with Vi. 
set nocompatible

" Update the title of your window or your terminal
set title
" Display line numers
set number
" Show a ruler with line number, % through file on status line
set ruler
" Wrap lines when they are too  long
set wrap

" Insert space characters whenever the tab key is pressed
set expandtab
" Number of space characters to use for each tab character
set tabstop=4
" Number of spaces to use for each step of (auto)indentation 
set shiftwidth=4

" Display at least 3 lines around you cursor (for scrolling)
set scrolloff=3 

" Ignore case when searching
set ignorecase
" If there is an uppercase in your search term
" search case sensitive again
set smartcase
" Highlight search results when typing 
set incsearch
" Highlight search results
set hlsearch

" Backspace behaves as expected
set backspace=indent,eol,start
" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable mouse use in all modes
set mouse=a

" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" Disable startup message
set shortmess=I

" Enable true colors (for tmux)
 if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Apply gruvbox colorscheme in dark mode
colorscheme gruvbox
set background=dark

