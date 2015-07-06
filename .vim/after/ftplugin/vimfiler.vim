" VimFiler
" conceal off
augroup vimfilerconceal
  autocmd!
  autocmd CursorMoved <buffer> setlocal conceallevel=0 concealcursor=nvc
augroup END
