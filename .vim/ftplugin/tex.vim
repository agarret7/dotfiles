" execute pdflatex program
nmap <F5> :w <bar> :!pdflatex --shell-escape %<cr>

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" on pressing tab, insert 2 spaces
set expandtab

" stop weird indentation (doesn't work)
" set nosmartindent

" autoclose dollar signs (doesn't work)
au FileType tex let b:delimitMate_quotes = "\" ' $"

let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a&  : Tabularize /&<CR>
  vmap <Leader>a&  : Tabularize /&<CR>
  nmap <Leader>a\\ : Tabularize /\\\\<CR>
  vmap <Leader>a\\ : Tabularize /\\\\<CR>
endif

" Silence the 10 trillion shitty useless TeX warnings.
let g:syntastic_quiet_messages = { 
  \ "!level": 'errors',
  \ "regex": ["possible unwanted space", "perhaps you should insert a", "missing",
  \ "Do not use @ in LaTeX macro names", "Dots should be", "punctuation mark",
  \ "Don't use", "to begin quotation", "Whitespace before punctation mark",
  \ "you may need a"] }
