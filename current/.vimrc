"
"                         ^\    ^                  
"                        / \\  / \                 
"                       /.  \\/   \      |\___/|   
"    *----*           / / |  \\    \  __/  O  O\    
"    |   /          /  /  |   \\    \_\/  \     \   
"   / /\/         /   /   |    \\   _\/    '@___@   Gabriel Santana 😉
"  /  /         /    /    |     \\ _\/       |      
"  |  |       /     /     |      \\\/        |      Where can you find me: 👽  
"  \  |     /_     /      |       \\  )   \ _|_     linkedin:     https://www.linkedin.com/in/gabrielsantana444
"  \   \       ~-./_ _    |    .- ; (  \_ _ _,\'    Github:       https://github.com/GabrielSantos198
"  ~    ~.           .-~-.|.-*      _        {-,    Website:      https://gabrielsantana.herokuapp.com/  
"   \      ~-. _ .-~                 \      /\'     E-mail:       gabrielsantana9807@gmail.com              
"    \                   }            {   .*
"     ~.                 '-/        /.-~----.
"       ~- _             /        >..----.\\\
"           ~ - - - - ^}_ _ _ _ _ _ _.-\\\
"


"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'townk/vim-autoclose'
Plugin 'HTML-AutoCloseTag'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kshenoy/vim-signature'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'othree/html5.vim'
Plugin 'w0rp/ale'

" Interface
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
Plugin 'yggdroot/indentline'
Plugin 'rrethy/vim-illuminate'


call vundle#end()                  " required
filetype plugin indent on          " required
"""" END Vundle Configuration


""""""""""""""""""""""""""""""""""
" CONFIGURATION SECTION
""""""""""""""""""""""""""""""""""
syntax on
set encoding=UTF-8
set spelllang=pt,en
set spell
set number
set relativenumber
set nowrap
set cursorline
set background=dark
colorscheme PaperColor
set tabstop=2 expandtab shiftwidth=2
set ignorecase
set smarttab
set completeopt-=preview

" NerdCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_python = 1

" vim-illuminate
let g:Illuminate_delay = 500
let g:Illuminate_ftblacklist = ['nerdtree']

" NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" pythonsyntax
let g:python_highlight_all = 1

" Ale
let b:ale_linters = {'python': ['pylint', 'flake8']}


""""""""""""""""""""""""""""""""""
" MAPPINGS 
""""""""""""""""""""""""""""""""""
let mapleader = "-"

" Open Terminal
nmap <leader>t :below term<CR>
nmap <leader>tt :term<CR>
nmap <leader>tv :below vert term<CR>

nnoremap <space> gt
nnoremap <left> <c-w>h
nnoremap <right> <c-w>l
nnoremap <down> <c-w>j
nnoremap <up> <c-w>k
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>o O<esc>O<esc>O
inoremap <F7> <esc>:w<CR>
nnoremap <F7> :w<CR>
inoremap <F2> <c-x><c-o>
nnoremap <F3> :set wrap!<CR>
inoremap <c-a> ã
inoremap <c-c> ç
inoremap <c-e> ê
inoremap <c-u> ú

" Plugins Mapping
nmap <c-i> :IndentLinesToggle<CR>
nmap <c-n> :NERDTreeToggle<CR>

nnoremap <c-m> :SignatureToggle<CR>

map ci <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy
map c$ <Plug>NERDCommenterToEOL

nnoremap <leader>l :ALEToggle<CR>


""""""""""""""""""""""""""""""""""
" ABBREVIATES
""""""""""""""""""""""""""""""""""
ab _name Gabriel Santana
ab _github https://github.com/GabrielSantos198
ab _linkedin https://www.linkedin.com/in/gabrielsantana444
ab _portfolio https://gabrielsantana.herokuapp.com/  
ab _email gabrielsantana9807@gmail.com 


""""""""""""""""""""""""""""""""""
" MY TESTS
""""""""""""""""""""""""""""""""""
" autocmd BufNewFile * :w
" autocmd BufWritePre *.html :normal gg=G
" autocmd FileType python nnoremap . ggVG


