" show existing tab with 4 spaces width
set softtabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" on pressing tab, insert 4 spaces
set expandtab

let g:syntastic_quiet_messages = { 
  \ "!level": 'errors',
  \ "regex": ["cannot find symbol"] }
