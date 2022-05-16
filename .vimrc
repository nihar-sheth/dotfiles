" ========================= "
" Nihar Sheth
" .vimrc configuration file
" ========================= "

" Vundle {{{1
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{2
Plugin 'VundleVim/Vundle.vim'							" https://github.com/VundleVim/Vundle.vim
Plugin 'preservim/nerdtree'							" https://github.com/preservim/nerdtree
Plugin 'vim-airline/vim-airline'						" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline-themes'						" https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='deus'							" Airline theme
Plugin 'tpope/vim-sleuth'							" https://github.com/tpope/vim-sleuth
" }}}2

call vundle#end()
filetype plugin indent on
" }}}1

" Vim {{{1

" Input options {{{2
set autochdir									" Set directory to currently opened file
set clipboard=unnamed								" Use keyboard clipboard (for Mac)
set backspace=indent,eol,start
set foldmethod=marker
set nofoldenable
set autoindent									" Auto-indent on new lines
" set shiftwidth=4								" Default tab width for auto-indention
" set tabstop=4									" Tab width
set wrap									" Turn on soft line-wrapping
set linebreak nolist								" Do not break in the middle of a word when wrapping
set whichwrap+=h,l,<,>								" Allow for left/right navigation keys to change lines at beginning/end of line

" Remapped shortcuts {{{2
let mapleader=','								" Change leader key to comma
noremap <Leader>n :NERDTreeToggle<CR>						" Shortcut to toggle NERDTree
noremap <Leader>h :nohlsearch<CR>						" Clear search highlighting

" Search options {{{2
set ignorecase									" Case-insensitive search
set smartcase									" Switch to case-sensitive search when an uppercase letter is in the expression
set incsearch									" Search as expression is typed

" UI options {{{2
set number									" Display line numbers
syntax on									" Syntax highlighting
set hlsearch									" Highlight search results
set spell									" Spellcheck highlighting
set showmatch									" Highlight matching parenthesis
set diffopt+=vertical								" Force vertical diffsplit
