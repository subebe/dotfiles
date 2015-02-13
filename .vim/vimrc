scriptencoding utf-8

"プラグイン関係
if has('vim_starting')
  set nocompatible
  set runtimepath+=$HOME/vimfiles/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/vimfiles/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'tpope/vim-surround'
  "入力補完
  NeoBundle 'Shougo/neocomplcache'
  "コメント
  NeoBundle 'The-NERD-Commenter'
  "unite
  NeoBundle 'Shougo/unite.vim'
  "filer
  NeoBundle 'Shougo/vimfiler'
  "再起動プラグイン
  NeoBundle 'tyru/restart.vim'
  "カーソル移動
  NeoBundle 'Lokaltog/vim-easymotion'
  " テキストオブジェクトで置換
  NeoBundle 'kana/vim-operator-replace'
  NeoBundle 'kana/vim-operator-user'
  "plugin repeat
  NeoBundle 'tpope/vim-repeat'
  "置換可視化
  NeoBundle 'osyo-manga/vim-over'
  "yank履歴
  NeoBundle 'LeafCage/yankround.vim'
  NeoBundle 'kien/ctrlp.vim'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

"vim-operator-replace
map <S-r> <Plug>(operator-replace)

"neocomplcache
"開始時に起動する
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3

"vim-easymotion
nmap s <Plug>(easymotion-s2)

" yankround.vim {{{
"" キーマップ
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
"" 履歴取得数
let g:yankround_max_history = 50
""履歴一覧(kien/ctrlp.vim)
nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>
" }}}

"デフォルトプラグイン
source $VIMRUNTIME/macros/matchit.vim

"#表示関係
"コマンドライン補完をわかりやすく
set wildmenu
"ステータスライン
set statusline=%-(%f%m%h%q%r%w%)%=%{&ff}\|%{&fenc}\ %y%l,%c\ %0P
set laststatus=2
"タブを常に表示
set showtabline=2
"行番号表示
set number
"タイトルバーをファイル名に
set title

"ルーラ表示
set ruler
"折り返し無効
set nowrap
"スクロールのオフセット設定
set scrolloff=10
"行頭行末の左右移動で行をまたぐ
set whichwrap=b,s,h,l,<,>,[,]
"左右スクロールのオフセット
set sidescrolloff=16
"左右スクロール距離
set sidescroll=1
"全角記号対応
set ambiwidth=double


"cygwinカーソルの変更
if &term !=# 'cygwin'
  let &t_ti .= "\e[1 q"
  let &t_SI .= "\e[5 q"
  let &t_EI .= "\e[1 q"
  let &t_te .= "\e[0 q"
endif


"#検索関係
"検索時に大文字・小文字を区別しない
set ignorecase
"大文字が含まれる場合は区別する
set smartcase
"逐次検索
set incsearch
"Esc*2で検索ハイライト解除
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>


"タブ、インデント設定
set expandtab
set ts=4
set tabstop=4
set noautoindent
set nosmartindent
"自動インデント幅
set shiftwidth=2
"タブ、バックスペースの空白移動幅
set softtabstop=0

"#ハイライト
"シンタックスハイライト
syntax on
"カラーテーマ
colorscheme hybrid
"検索結果のハイライト
set hlsearch is
"カーソル行のハイライト
set cursorline
"set cursorcolumn

"不可視文字
"set conceallevel=2
"set concealcursor=nvic
"set list
"let &listchars="tab:?\ ,eol:\u00b6"  "eolは¶を表示
"syntax match Ignore / / containedin=ALL conceal cchar=･
"syntax match Ignore /　/ containedin=ALL conceal cchar=□

"#他
".vimrc編集コマンド追加
command! EVimrc :e $MYVIMRC
"vimrcを保存したときに再読み込み
augroup vimrc
    autocmd!
    autocmd BufWritePost *vimrc source $MYVIMRC
augroup END

"カレントディレクトリの設定
cd $HOME
augroup set_crr
    autocmd!
    autocmd   BufEnter *   execute ":lcd " . expand("%:p:h")
augroup END

"インクリメント、デクリメントを10進のみにする
set nrformats="hex"
"viminfoファイルのパスを変更
set viminfo+=n$HOME/vimfiles/viminfo
"バックアップファイル設定
set backup
set backupdir=$HOME/vimfiles/backup
"スワップファイル設定
set swapfile
set directory=$HOME/vimfiles/swap
"アンドゥファイル設定
set undodir=$HOME/vimfiles/undo

set backspace=indent,eol,start
set mouse=a
set clipboard+=unnamed

set iminsert=0
set imsearch=0


"ノーマルモードでの改行
nnoremap <Space>j o<Esc>
nnoremap <Space>k O<Esc>
"行末先頭
nnoremap <Space>h  ^
vnoremap <Space>h  ^
nnoremap <Space>l  $
vnoremap <Space>l  $

"全コピーコマンド
nnoremap <silent> <C-y> :%y<CR>
nnoremap <silent> <space>d :%d<CR>
"半角スペース付けない行結合
nnoremap J gJ
nnoremap gJ J
"すべて選択
vnoremap v G$oggo
"1行選択
nnoremap V 0v$h


inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <C-p> <ESC>"*pi

if &term ==# 'cygwin'
  nnoremap <silent> [1;5I :tabn<CR>
  nnoremap <silent> [1;6I :tabp<CR>
else
  nnoremap <C-Tab> gt
  nnoremap <C-S-Tab> gT
  nnoremap <silent> <C-w> :q<CR>
  nnoremap <silent> <C-s> :w<CR>
  nnoremap <silent> <C-t> :tabnew<CR>
endif

map <silent> <F1> :e $MYVIMRC<CR>
map <silent> <F2> :se ft=html<CR>


"html補完
augroup htmlcomp
  autocmd!
  autocmd FileType html inoremap <silent> <buffer> </ </<C-x><C-o>
augroup END
