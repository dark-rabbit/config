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

" Bar de statut stylée
" Danger : besoin d'installer une police pour éviter les charactere degueux
Plugin 'bling/vim-airline'

" Coder du HTML comme un gros bourrin
" taper html:5 en insertion puis ctrl+y puis ,
" ctrl+y puis , pour la plupart des fonctionnalités
Plugin 'mattn/emmet-vim'

" HTML5 syntax
Plugin 'othree/html5.vim'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'lsdr/monokai'
Plugin 'dsolstad/vim-wombat256i'

call vundle#end()
filetype plugin indent on

" colors
syntax enable
if has("gui_running")
	set background=light
	colorscheme solarized
	"colorscheme monokai
else
	set background=dark
	set t_Co=256
	colorscheme wombat256i
endif

" vim airline config
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

" Syntastic config
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Interface
set wildmenu
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
set guifont=Inconsolata\ for\ powerline\ 13
