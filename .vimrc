""""""""""""""""""""""""""""""""""""
" プラグインのセットアップ
"""""""""""""""""""""""""""""""""""
set nocompatible  " vi互換モードをやめる

if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最新使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" ディレクトリをツリー表示する
NeoBundle 'scrooloose/nerdtree'



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
set autoindent                  " 自動インデント
set shiftwidth=2                " 自動インデントの幅
set tabstop=2                   " タブ幅をスペース数


""""""""""""""""""""""""""""""""""""
" キーマップ
""""""""""""""""""""""""""""""""""""

nnoremap <silent><C-e> :NERDTreeToggle<CR>

