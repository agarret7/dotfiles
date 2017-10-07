" execute pdflatex program
nmap <F5> :w <bar> :!pdflatex %<cr>

" show existing tab with 4 spaces width
set softtabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" on pressing tab, insert 4 spaces
set expandtab

let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a&  : Tabularize /&<CR>
  vmap <Leader>a&  : Tabularize /&<CR>
  nmap <Leader>a\\ : Tabularize /\\\\<CR>
  vmap <Leader>a\\ : Tabularize /\\\\<CR>
endif

let g:syntastic_quiet_messages = { 
  \ "!level": 'errors',
  \ "regex": ["possible unwanted space", "perhaps you should insert a", "missing",
  \ "Do not use @ in LaTeX macro names"] }
