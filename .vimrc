""""""""""""""""""""""""""""""""""""
" プラグインのセットアップ
"""""""""""""""""""""""""""""""""""
set nocompatible  " vi互換モードをやめる

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" 一般
" ---------------------------------
NeoBundleFetch 'Shougo/neobundle.vim'  " プラグイン管理
NeoBundle 'scrooloose/nerdtree'        " ディレクトリをツリー表示する
"NeoBundle 'vim-scripts/AnsiEsc.vim'    " ログファイルを色付けしてくれる
NeoBundle "ctrlpvim/ctrlp.vim"         " Go to anything

" プログラミング
" --------------------------------
"NeoBundle 'tomtom/tcomment_vim'             " コメントON/OFF(Shift+V -> Ctrl+--)
"NeoBundle 'tpope/vim-surround'              " シングルコーテーションとダブルコーテーションの入れ替え等
"NeoBundle 'nathanaelkane/vim-indent-guides' " インデントに色をつけてわかりやすくする

NeoBundle 'tpope/vim-rails'                 " Rails向けコマンド
NeoBundle 'tpope/vim-endwise'               " Ruby向けにendを自動挿入してくれる

call neobundle#end()

filetype plugin indent on

" Vimスタート時にインストールされていないBundleがあれば
" インストールをするかどうか促すプロンプトが表示される
NeoBundleCheck

"""""""""""""""""""""""""""""""""""""
" 設定
"""""""""""""""""""""""""""""""""""""
set number                      " 行番号を表示する
set backspace=indent,eol,start  " バックスペースキーの挙動
"set autoindent                  " 自動インデント
set shiftwidth=2                " 自動インデントの幅
set tabstop=2                   " タブ幅をスペース数
set noswapfile                  " スワップファイルを作らない
syntax on                       " ハイライトを有効化

""""""""""""""""""""""""""""""""""""
" キーマップ
""""""""""""""""""""""""""""""""""""

" Indent Guides Enable
let g:indent_guides_enable_on_vim_startup = 1 "  vim起動時にvim-indent-guidesをonにする

" NERDTREE
nnoremap <silent><C-e> :NERDTreeToggle<CR>

