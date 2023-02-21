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
"  ~    ~.           .-~-.|.-*      _        {-,    Website:      https://gabrielsantana.online
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
Plugin 'sotte/presenting.vim'
Plugin 'othree/html5.vim'
Plugin 'w0rp/ale'
Plugin 'turbio/bracey.vim'

" Interface
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
Plugin 'yggdroot/indentline'
Plugin 'rrethy/vim-illuminate'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'ap/vim-css-color'
Plugin 'vim-airline/vim-airline'

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
colorscheme afterglow
set tabstop=2 expandtab shiftwidth=2
set ignorecase
set incsearch
set smarttab
set completeopt-=preview
set updatetime=250

" Live external modifications
set autoread
if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
    silent! checktime
    call timer_start(1000,'CheckUpdate')
endfunction

" NerdCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDAltDelims_python = 1

" vim-illuminate
let g:Illuminate_delay = 500
let g:Illuminate_ftblacklist = ['nerdtree']


" NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

function! NERDTreeHighlightFile(extension, fg)
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermfg='. a:fg .''
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
endfunction

call NERDTreeHighlightFile('py', '179')
call NERDTreeHighlightFile('js', '226')
call NERDTreeHighlightFile('Procfile', '177')
call NERDTreeHighlightFile('html', '242')
call NERDTreeHighlightFile('css', '74')
call NERDTreeHighlightFile('scss', '179')
call NERDTreeHighlightFile('png', '205')
call NERDTreeHighlightFile('jpg', '205')
call NERDTreeHighlightFile('jpeg', '205')
highlight NERDTreeFlags ctermfg=148
highlight NERDTreeDIR ctermfg=148
highlight NERDTreeCWD ctermfg=74

highlight SpellBad ctermfg=15 ctermbg=1
highlight illuminatedWord cterm=underline ctermbg=236
" Show colors :hi


" Ale
let b:ale_linters = {'python': ['pylint', 'flake8']}


""""""""""""""""""""""""""""""""""
" MAPPINGS 
""""""""""""""""""""""""""""""""""
let mapleader = "-"

" Open Terminal
nmap <leader>t :set termwinsize=10x0<CR>:below term<CR>
nmap <leader>tv :set termwinsize=0x0<CR>:below vert term<CR>

nnoremap <space> gt
nnoremap <left> <c-w>h
nnoremap <right> <c-w>l
nnoremap <down> <c-w>j
nnoremap <up> <c-w>k
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>o O<esc>O
nnoremap <F1> :smile<CR>
nnoremap <F4> :set wrap!<CR>
nnoremap <F5> :set paste!<CR>


" Plugins Mapping
nmap <c-i> :IndentLinesToggle<CR>
nmap <c-n> :NERDTreeToggle<CR>

nnoremap <c-m> :SignatureToggle<CR>

map ci <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy
map c$ <Plug>NERDCommenterToEOL

nnoremap <leader>l :ALEToggle<CR>

nnoremap <F6> :PresentingStart<CR>

noremap <F7> :BraceyReload<CR>
noremap <F8> :Bracey<CR>
autocmd FileType * inoremap qq <c-x><c-o>


""""""""""""""""""""""""""""""""""
" ABBREVIATES
""""""""""""""""""""""""""""""""""
ab name! Gabriel Santana
ab github! https://github.com/GabrielSantos198
ab linkedin! https://www.linkedin.com/in/gabrielsantana444
ab email! gabrielsantana9807@gmail.com 
ab site! https://gabrielsantana.online
ab css! *, *:after, *:before{<cr>  margin: 0;<cr>  padding: 0;<cr>  border: 0;<cr>  box-sizing: border-box;<cr>  text-decoration: none;<cr>}<enter>


""""""""""""""""""""""""""""""""""
" MY TESTS
""""""""""""""""""""""""""""""""""
" autocmd BufNewFile * :w
" autocmd BufWritePre *.html :normal gg=G
" autocmd FileType python nnoremap . ggVG
autocmd BufEnter *.png,*.jpg,*.jpeg,*.gif exec "!/bin/feh ".expand("%") | :bw
autocmd CursorHold,CursorHoldI * update 

