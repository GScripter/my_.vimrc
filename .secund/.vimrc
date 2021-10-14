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
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'lilydjwg/colorizer'
Plugin 'othree/html5.vim'

" Interface
Plugin 'vim-airline/vim-airline'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'w0ng/vim-hybrid'
Plugin 'mhinz/vim-startify'
Plugin 'yggdroot/indentline'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'rrethy/vim-illuminate'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-python/python-syntax'
Plugin 'tadaa/vimade'


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
set clipboard=unnamedplus
set background=dark
colorscheme happy_hacking
set tabstop=4 expandtab shiftwidth=4
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
let g:Illuminate_ftblacklist = ['nerdtree']

" NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" pythonsyntax
let g:python_highlight_all = 1

" colorizer
let g:colorizer_maxlines = 1000

" vimade
let g:vimade = {}
let g:vimade.fadelevel = 0.2



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
inoremap <F2> <c-x><c-o>
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
ab :hands: 🙏
ab :smile: 😂
ab :cool: 👍
ab :snake: 🐍
ab :sleeping: 😴
ab :wine: 🍷
ab :fire: 🔥
ab :lamp: 💡



""""""""""""""""""""""""""""""""""
" MY TESTS
""""""""""""""""""""""""""""""""""
" autocmd BufNewFile * :w
" autocmd BufWritePre *.html :normal gg=G
" autocmd FileType python nnoremap . ggVG

