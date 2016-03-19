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

" Ack (better grep)
" Require native program ack
Plugin 'mileszs/ack.vim'

" Bar de statut stylée
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" colors
syntax enable
set background=light
colorscheme solarized


" highlight Search guibg=DarkMagenta guifg=DarkGrey
" highlight StatusLine guibg=DarkGrey guifg=DarkMagenta
" highlight WildMenu guibg=DarkMagenta guifg=DarkGrey
"
" highlight Search ctermfg=black ctermbg=DarkMagenta
" highlight StatusLine ctermbg=Black ctermfg=DarkMagenta
" highlight WildMenu ctermbg=DarkMagenta ctermfg=Black

" bar de statut
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set noshowmode

" Interface
set wildchar=<Tab> wildmenu wildmode=full
set cursorline
set number
set ruler

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set guifont=Source\ Code\ Pro\ 9

" mapping tab to bnext
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
