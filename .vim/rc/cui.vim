" カーソルの変更
let &t_ti .= "\e[1 q"
let &t_SI .= "\e[5 q"
let &t_EI .= "\e[1 q"
let &t_te .= "\e[0 q"

" 矢印キー有効
set notimeout
set ttimeout
set timeoutlen=100
