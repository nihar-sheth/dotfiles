" ========================= "
" Nihar Sheth
" .vimrc configuration file
" ========================= "

" Vundle {{{1

" Init {{{2
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{2
Plugin 'VundleVim/Vundle.vim'							" https://github.com/VundleVim/Vundle.vim
Plugin 'preservim/nerdtree'							" https://github.com/preservim/nerdtree
Plugin 'vim-airline/vim-airline'						" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline-themes'						" https://github.com/vim-airline/vim-airline-themes
Plugin 'tpope/vim-sleuth'							" https://github.com/tpope/vim-sleuth

" Plugin settings {{{2
let g:airline_theme='deus'							" Airline theme
let g:airline_powerline_fonts = 1						" Enable powerline fonts

" Post-config {{{2
call vundle#end()
filetype plugin indent on

" Vim {{{1

" General {{{2
set autochdir									" Set directory to currently opened file
set wrap									" Turn on soft line-wrapping
set linebreak nolist								" Do not break in the middle of a word when wrapping
set shortmess=I									" Disable intro screen
set foldmethod=marker								" Fold with default marker
set nofoldenable								" Open with folds open
set scrolloff=2									" Keep 2 lines around cursor at edges

" Performance {{{2
set history=5000								" Command/search history
set undolevels=1000								" Undo state history
set lazyredraw									" Disable redrawing during macro execution
set autoread									" Update buffer if file is modified outside Vim

" Input {{{2
set clipboard=unnamed								" Use keyboard clipboard (for Mac)
set autoindent									" Auto-indent on new lines
set whichwrap+=h,l,<,>								" Allow for left/right navigation keys to change lines at beginning/end of line

" Remaps {{{2
let mapleader=','								" Change leader key to comma
noremap <Leader>n :NERDTreeToggle<CR>						" Shortcut to toggle NERDTree
noremap <Leader>h :nohlsearch<CR>						" Clear search highlighting

" Search {{{2
set ignorecase									" Case-insensitive search
set smartcase									" Switch to case-sensitive search when an uppercase letter is in the expression
set incsearch									" Search as expression is typed

" UI {{{2
set number									" Display line numbers
syntax on									" Syntax highlighting
set hlsearch									" Highlight search results
set spell									" Spellcheck highlighting
set showmatch									" Highlight matching parenthesis
set diffopt+=vertical								" Force vertical diffsplit
