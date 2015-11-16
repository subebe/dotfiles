" Quick Fix
" Preview
nnoremap <buffer> J j<CR><C-w>p
nnoremap <buffer> K k<CR><C-w>p
nnoremap <buffer> v <CR><C-w>p

nnoremap <buffer> j j
nnoremap <buffer> k k

setlocal nowrap
setlocal statusline=%t%{exists(\'w:quickfix_title\')?w:quickfix_title\ :\'\'}\ %=%-15(%l/%L,%c%V%)\ %P
