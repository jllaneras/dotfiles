" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Disable startup warning saying the vim 8.1 is required
let g:coc_disable_startup_warning = 1

" Set leader key to space
let mapleader = " "

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Cancel the compatibility with Vi. 
set nocompatible

" The encoding displayed.
set encoding=utf-8
" The encoding written to file.
set fileencoding=utf-8

" Update the title of your window or your terminal
set title
" Display line numers
set number relativenumber
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
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox
set background=dark

" COC plugin config
set cmdheight=2
set updatetime=300
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)

" ALE plugin config
let g:ale_linters = {
    \   'python': ['flake8', 'pylint'],
    \   'javascript': ['eslint'],
    \}

