" execute pdflatex program
nmap <F5> :w <bar> :!ghci % <cr>
nmap <F6> :w <bar> :!ghci % <cr>

setl makeprg=ghc\ --make\ %
setl errorformat=%E%f:%l:%c:,%C\ %.%m,%Z,%f:%l:%c:%m

" Set tab width to 2
set tabstop=2
" show existing tab with 2 spaces width
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" on pressing tab, insert 2 spaces
set expandtab

set autoindent

" Placeholder in case we want to silence things.
let g:syntastic_quiet_messages = { }
" \ "!level": 'errors',
" \ "regex": ["possible unwanted space"] }
