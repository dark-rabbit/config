set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage himself
Plugin 'gmarik/Vundle.vim'

" Normalisation de certains paramètres
Plugin 'tpope/vim-sensible'

" Auto Completion
Plugin 'Valloric/YouCompleteMe'

" Correction des erreurs de syntax
Plugin 'scrooloose/syntastic'

" Gestion des parentheses, crochets ...
" cs(] pour changer ( en [
" ysiw( pour ajouter )
" ...
Plugin 'tpope/vim-surround'

" Auto Bracket
Plugin 'Raimondi/delimitMate'

" Commenter rapidement
" ctrl + _ puis ctrl + _
Plugin 'tomtom/tcomment_vim'

" Mieux se deplacer dans le code
" taper \ puis \ puis w ou e ou b ou f+char ...
Plugin 'Lokaltog/vim-easymotion'

" Plusieurs curseurs !
" ctrl+n pour créer un curseur
Plugin 'terryma/vim-multiple-cursors'

" Arbre de fichiers
" commande :NERDTree
Plugin 'scrooloose/nerdtree'

" File fuzz
Plugin 'kien/ctrlp.vim'

" Bar de statut stylée
" Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-airline'

" Coder du HTM comme un gros bourrin
" taper htm:5 en insertion puis ctrl+y puis ,
" ctrl+y puis , pour la plupart des fonctionnalités
Plugin 'mattn/emmet-vim'

" HTML syntax
Plugin 'othree/html5.vim'

" JS Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

" TernJS (better autocompletion and refactoring)
" Need NodeJS + npm, npm install in .vim/bundle/tern_for_vim
Plugin 'marijnh/tern_for_vim'

" JS hint
Plugin 'Shutnik/jshint2.vim'

" NodeJS
Plugin 'moll/vim-node'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" colors
syntax enable
colorscheme base16-atelierforest

set background=dark

highlight Search guibg=DarkMagenta guifg=DarkGrey
highlight StatusLine guibg=DarkGrey guifg=DarkMagenta
highlight WildMenu guibg=DarkMagenta guifg=DarkGrey

highlight Search ctermfg=black ctermbg=DarkMagenta
highlight StatusLine ctermbg=Black ctermfg=DarkMagenta
highlight WildMenu ctermbg=DarkMagenta ctermfg=Black

" bar de statut
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set noshowmode

" js libs
let g:used_javascript_libs = 'angularjs,jquery'

" Interface
set wildchar=<Tab> wildmenu wildmode=full
set cursorline
set number
set ruler

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smarttab
set smartindent
set autoindent

" Search
set hlsearch
set ignorecase
set smartcase

" Mouse
set mouse=a

" Options Gvim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" no error bell or flash
set noeb vb t_vb=
set guicursor+=a:blinkon0

" font
set guifont=Ubuntu\ Mono\ 12

" mapping tab to bnext
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
