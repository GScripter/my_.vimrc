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


" Interface
Plugin 'vim-airline/vim-airline'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'yggdroot/indentline'


call vundle#end()                  " required
filetype plugin indent on          " required
"""" END Vundle Configuration


""""""""""""""""""""""""""""""""""
" Configuration Section
""""""""""""""""""""""""""""""""""
syntax on
set number
set cursorline
set  clipboard=unnamedplus
colorscheme happy_hacking

""""""""""""""""""""""""""""""""""
" Mappings Configuration
""""""""""""""""""""""""""""""""""
let mapleader = "-"

nmap <c-n> :NERDTreeToggle<CR>
nnoremap <space> gt
nmap <leader>t :term<CR>
nmap <leader>p :OpenBrowserSearch 
nmap + ilorem<c-y>,<enter><esc>
nnoremap <leader>ev :split $MYVIMRC<CR>
