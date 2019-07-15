" Cancel the compatibility with Vi. 
set nocompatible

" Update the title of your window or your terminal
set title
" Display line numers
set number
" Display cursor position
set ruler
" Wrap lines when they are too  long
set wrap

" Display tabs that look 4-space wide
set tabstop=4
" Number of spaces to use for each step of (auto)indent 
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

if has('gui_running')
  " Add menu bar
  :set guioptions+=m
  " Remove toolbar
  :set guioptions-=T  
  if has('gui_win32')
    set guifont=Lucida_Console:h9:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ 10
  endif
endif

set antialias

" Disable startup message
set shortmess=I

" Set vim color scheme
colo delek
