set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Vundle manage himself
Plugin 'gmarik/Vundle.vim'

" Sain defaults
Plugin 'tpope/vim-sensible'

" Easy navigation
" type \ then \ then w or e or b or f+char ...
Plugin 'Lokaltog/vim-easymotion'

" File tree view
" command :NERDTree
Plugin 'scrooloose/nerdtree'

" Fuzzy search
Plugin 'kien/ctrlp.vim'

" Ack (better grep)
" Require native program ack
Plugin 'mileszs/ack.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Better status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Auto complete
Plugin 'Valloric/YouCompleteMe'

" Linter
Plugin 'scrooloose/syntastic'

" Auto Brackets
Plugin 'Raimondi/delimitMate'

" Quick commenting
" ctrl + _ twice
Plugin 'tomtom/tcomment_vim'

" Brackets macro
" cs(] to change ( to [
Plugin 'tpope/vim-surround'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Go
Plugin 'fatih/vim-go'

" Emmet
" easy html and css coding
Plugin 'mattn/emmet-vim'

" HTML5
Plugin 'othree/html5.vim'

" Better JS indentation and syntax
Plugin 'pangloss/vim-javascript'

" Vue templates
Plugin 'posva/vim-vue'


call vundle#end()
filetype plugin indent on



" Clean gvim ui

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


" No error bell or flash

set noeb vb t_vb=
set guicursor+=a:blinkon0


" Mouse

set mouse=a


" Interface

set wildchar=<Tab> wildmenu wildmode=full
set cursorline
set number
set ruler


" Status bar

let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set noshowmode


" Search

set hlsearch
set ignorecase
set smartcase


" XTERM bug fix
set t_RV=


" Colors

syntax on
set background=dark
set t_Co=256
let base16colorspace=256
colorscheme base16

highlight Search guibg=DarkMagenta guifg=DarkGrey
highlight StatusLine guibg=DarkGrey guifg=DarkMagenta
highlight WildMenu guibg=DarkMagenta guifg=DarkGrey

highlight Search ctermfg=black ctermbg=DarkMagenta
highlight StatusLine ctermbg=Black ctermfg=DarkMagenta
highlight WildMenu ctermbg=DarkMagenta ctermfg=Black


" Font

set guifont=Source\ Code\ Pro\ 9


" Mapping tab to bnext

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" Indent with 2 spaces

set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set smarttab
set smartindent
set autoindent


" Configure CtrlP

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_custom_ignore = 'node_modules'


" Activate eslint

let g:syntastic_javascript_checkers = ['eslint']

