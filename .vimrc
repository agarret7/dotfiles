" breaking compatibility with vi, oh no!
set nocompatible

" necessary for Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    """ plugins """

    Plugin 'MarcWeber/vim-addon-mw-utils'   " dependency for vim-snipmate
    Plugin 'Raimondi/delimitMate'           " automatic closing of quotes, parens, etc.
    Plugin 'Vimjas/vim-python-pep8-indent'  " fancy python indenting
    Plugin 'ctrlpvim/ctrlp.vim'             " fuzzy finder
    Plugin 'easymotion/vim-easymotion'      " quick motion around vim
    Plugin 'garbas/vim-snipmate'            " automatically generate code snippets
    Plugin 'godlygeek/tabular'              " easy column alignment
    Plugin 'honza/vim-snippets'             " some code snippets for snipmate
    Plugin 'let-def/vimbufsync'             " coquille dependency
    Plugin 'neomake/neomake'                " automake features
    Plugin 'scrooloose/nerdtree'            " file navigation
    Plugin 'the-lambda-church/coquille'     " interactive coq in vim
    Plugin 'tomtom/tlib_vim'                " dependency for vim-snipmate
    Plugin 'vim-airline/vim-airline'        " fancy status bar
    Plugin 'vim-airline/vim-airline-themes' " airline themes
    Plugin 'vim-syntastic/syntastic'        " syntax checking
    Plugin 'tpope/vim-fugitive'             " git integration in vim
    Plugin 'lervag/vimtex'                  " tex integration with vim
    " Plugin 'Valloric/YouCompleteMe'       " automatic tab completion (conflicts with snipmate)

call vundle#end()

" plugins finished, so lets add it back
filetype on

" styling

" automatically save folds
augroup QuickNotes
  au BufWrite,VimLeave * mkview
  au BufRead           * silent loadview
augroup END

" details for snippets
let g:snips_author="Austin J. Garrett"
let g:snips_email="agarret7@mit.edu"
let g:snips_github="agarret7"

" split divider
hi VertSplit cterm=None
set fillchars=vert:│

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled=1
let g:airline_skip_empty_sections=1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
let g:airline_symbols = {}
let g:airline_symbols.linenr=''
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.whitespace=''


filetype plugin indent on

""" display options """

" make ~ at end of buffer a little darker
highlight EndOfBuffer ctermfg=black ctermbg=None

" enable syntax highlighting
syntax on

" show line number
set number

" show statusline
set laststatus=2

" case-insensitive search
set ignorecase

" highlight search results
set hlsearch

" make the clipboard the system's
set clipboard=unnamedplus

" adds full mouse compatability
if has("mouse")
  set mouse=a
endif

" bash-style tab completion
set wildmode=longest,list
set wildmenu

" disable comment continuation on paste
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" show existing tab with 4 spaces width
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" fix weird backspace issues
set backspace=indent,eol,start

" folding
set foldmethod=indent
set foldcolumn=0
set foldlevelstart=20
highlight Folded cterm=bold,italic ctermbg=None

let g:vim_markdown_folding_disabled=1 " Markdown
let javaScript_fold=1                 " JavaScript
let perl_fold=1                       " Perl
let php_folding=1                     " PHP
let r_syntax_folding=1                " R
let ruby_fold=1                       " Ruby
let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML

" start nerdtree
map <C-n> :NERDTreeToggle<CR>

" opens nerdtree if no files are specified, or if a dir is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" easier tab navigation
nnoremap <Right> :tabn<CR>
nnoremap <Left> :tabp<CR>

" close vim if only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" navigate splits more easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" starts ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

" clears highlights on esc.
map // :noh<return><esc>

" Split line here. (Inverse of S-J).
map <S-K> <Esc>i<Enter><Esc>

let g:syntastic_cpp_compiler = "g++"
" let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_debug = 1

" Some useful functions for selecting python version.
function Py2()
  let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'
endfunction

function Py3()
  let g:syntastic_python_python_exec = '/usr/local/bin/python3.6'
endfunction

" Default to Python 3
call Py3()

" Recognize Idris
if &ft=='idr'
  :set ft=idris
endif
