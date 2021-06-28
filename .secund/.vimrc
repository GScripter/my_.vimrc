"  _        _    _____    _      
" | |___   | |  |  ___|  | |       
" |  _  \  | |  | |___   | |       Gabriel Santana 
" | | | |  | |  |  ___|  | |       https://github.com/GabrielSantos198/
" | |_| |  | |  | |___   | |____   
" \_____/  |_|  |_____|  |______|  
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
Plugin 'tyru/open-browser.vim'
Plugin 'townk/vim-autoclose'
Plugin 'HTML-AutoCloseTag'
Plugin 'johngrib/vim-game-snake'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'

" Interface
Plugin 'vim-airline/vim-airline'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'yggdroot/indentline'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'justincampbell/vim-eighties'


call vundle#end()                  " required
filetype plugin indent on          " required
"""" END Vundle Configuration


""""""""""""""""""""""""""""""""""
" Configuration Section
""""""""""""""""""""""""""""""""""
syntax on
set encoding=utf8
set spelllang=pt,en
set spell
set number
set nowrap
set cursorline
set  clipboard=unnamedplus
colorscheme happy_hacking
set tabstop=2 expandtab shiftwidth=2
set ignorecase

" NerdCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_python = 1
map ci <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy
map c$ <Plug>NERDCommenterToEOL

" jedi
let g:jedi#use_splits_not_buffers = "right"
autocmd FileType python setlocal completeopt-=preview



""""""""""""""""""""""""""""""""""
" Mappings Configuration
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
nmap + ilorem<c-y>,<enter><esc>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>o O<esc>O<esc>
inoremap <c-a> ã
inoremap <c-c> ç
inoremap <c-e> ê
inoremap <c-u> ú

" Plugin Mappings 
nmap <c-i> :IndentLinesToggle<CR>
nmap <c-n> :NERDTreeToggle<CR>

nmap <leader>d :OpenBrowserSearch 
map <leader>l <Plug>(openbrowser-open)
map <leader>b <Plug>(openbrowser-search)



""""""""""""""""""""""""""""""""""
" TESTS
""""""""""""""""""""""""""""""""""
autocmd BufNewFile * :w
autocmd BufWritePre *.html :normal gg=G
autocmd FileType python nnoremap . ggVG



