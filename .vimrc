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
Plugin 'itchyny/lightline.vim'

" Coder du HTML comme un gros bourrin
" taper html:5 en insertion puis ctrl+y puis ,
" ctrl+y puis , pour la plupart des fonctionnalités
Plugin 'mattn/emmet-vim'

" HTML5 syntax
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'

" JS hint
Plugin 'Shutnik/jshint2.vim'

" NodeJS
Plugin 'moll/vim-node'

" Colorschemes
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

" colors
syntax enable

" colorscheme Tomorrow-Night-Eighties
colorscheme base16-eighties

" bar de statut light (pas de fonts speciales)
let g:lightline = {
\	'colorscheme': 'Tomorrow_Night_Eighties',
\}
set noshowmode
let g:used_javascript_libs = 'angularjs,jquery'

" Syntastic config
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

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

" Easymotion search
" map / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

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
