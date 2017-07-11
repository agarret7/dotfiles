set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    """ plugins """

    Plugin 'scrooloose/nerdtree'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'easymotion/vim-easymotion'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

""" display options """

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
set clipboard=unnamed

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
" when indenting with '>', use 4 spcaes width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" fix weird backspace issues
set backspace=indent,eol,start

" folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20

let g:vim_markdown_folding_disabled=1 " Markdown
let javaScript_fold=1                 " JavaScript
let perl_fold=1                       " Perl
let php_folding=1                     " PHP
let r_syntax_folding=1                " R
let ruby_fold=1                       " Ruby
let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML

" opens nerdtree if no files are specified, or if a dir is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" navigate splits more easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" starts nerdtree 
map <C-n> :NERDTreeToggle<CR>

" starts ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

" clears highlights on esc.
map // :noh<return><esc>

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
