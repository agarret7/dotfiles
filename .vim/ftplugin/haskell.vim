" execute pdflatex program
nmap <F5> :w <bar> :make <cr>
nmap <F6> :w <bar> :!ghci % <cr> 

setl makeprg=ghc\ --make\ %
setl errorformat=%E%f:%l:%c:,%C\ %.%m,%Z,%f:%l:%c:%m

" show existing tab with 4 spaces width
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

set autoindent

" Placeholder in case we want to silence things.
let g:syntastic_quiet_messages = { }
" \ "!level": 'errors',
" \ "regex": ["possible unwanted space"] }
