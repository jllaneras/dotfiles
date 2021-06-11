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
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Gruvbox colorscheme
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = '0'
" colorscheme gruvbox
" set background=light

" Onehalf colorscheme
colorscheme onehalflight

" ALE plugin config
let g:ale_linters = {
    \   'python': ['flake8', 'pylint'],
    \   'javascript': ['eslint'],
    \}

" coc.nvim plugin
source ~/.vim/config/coc.vim

