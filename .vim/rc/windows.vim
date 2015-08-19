" インサートモードを抜けるときにIMEをオフに
inoremap <silent> <ESC> <ESC><ESC>:set iminsert=0<CR>
autocmd GUIEnter * set transparency=240

call extend(g:quickrun_config['watchdogs_checker/_'], {
\   'hook/output_encode/enable' : 1,
\   'hook/output_encode/encoding' : 'cp932',
\})
call watchdogs#setup(g:quickrun_config)

