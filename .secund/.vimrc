"
"                         ^\    ^
"                        / \\  / \
"                       /.  \\/   \      |\___/|
"    *----*           / / |  \\    \  __/  O  O\
"    |   /          /  /  |   \\    \_\/  \     \   Gabriel Santana 😉
"   / /\/         /   /   |    \\   _\/    '@___@   https://github.com/GabrielSantos198/
"  /  /         /    /    |     \\ _\/       |
"  |  |       /     /     |      \\\/        |      Summary:
"  \  |     /_     /      |       \\  )   \ _|_       21-58 --> Vundle Configuration and Plugins
"  \   \       ~-./_ _    |    .- ; (  \_ _ _,\'      59-87 --> Configuration Section
"  ~    ~.           .-~-.|.-*      _        {-,      88-128 --> Mappings
"   \      ~-. _ .-~                 \      /\'       130-145 --> Abbreviates
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
Plugin 'tyru/open-browser.vim'
Plugin 'townk/vim-autoclose'
Plugin 'HTML-AutoCloseTag'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
Plugin 'ashisha/image.vim'
Plugin 'kshenoy/vim-signature'

" Interface
Plugin 'vim-airline/vim-airline'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'yggdroot/indentline'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'rrethy/vim-illuminate'

call vundle#end()                  " required
filetype plugin indent on          " required
"""" END Vundle Configuration



""""""""""""""""""""""""""""""""""
" CONFIGURATION SECTION
""""""""""""""""""""""""""""""""""
syntax on
set encoding=utf8
set spelllang=pt,en
set spell
set number
set nowrap
set cursorline
set clipboard=unnamedplus
colorscheme happy_hacking
set tabstop=2 expandtab shiftwidth=2
set ignorecase

" NerdCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_python = 1

" jedi
let g:jedi#use_splits_not_buffers = "right"
autocmd FileType python setlocal completeopt-=preview

" vim-illuminate
let g:Illuminate_delay = 500



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
nmap + ilorem<c-y>,<enter><esc>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>o O<esc>O<esc>O
inoremap <F7> <esc>:w<CR>
nnoremap <F7> :w<CR>
inoremap <c-a> ã
inoremap <c-c> ç
inoremap <c-e> ê
inoremap <c-u> ú

" Plugins Mapping
nmap <c-i> :IndentLinesToggle<CR>
nmap <c-n> :NERDTreeToggle<CR>

nmap <leader>d :OpenBrowserSearch
map <leader>l <Plug>(openbrowser-open)
map <leader>b <Plug>(openbrowser-search)

nnoremap <c-m> :SignatureToggle<CR>

map ci <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy
map c$ <Plug>NERDCommenterToEOL



""""""""""""""""""""""""""""""""""
" ABBREVIATES
""""""""""""""""""""""""""""""""""
ab :robo: 🤖
ab :sorriso: 😂
ab :polegar: 👍
ab :cobra: 🐍
ab :pinguim: 🐧
ab :cocô: 💩
ab :sono: 😴
ab :vinho: 🍷
ab :fogo: 🔥
ab :lampada: 💡
ab :tristeza: 😭



""""""""""""""""""""""""""""""""""
" MY TESTS
""""""""""""""""""""""""""""""""""
" autocmd BufNewFile * :w
" autocmd BufWritePre *.html :normal gg=G
" autocmd FileType python nnoremap . ggVG
