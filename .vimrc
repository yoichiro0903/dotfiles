set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set encoding=utf-8
set fileformats=unix,dos,mac

" Common -------------------------------
set nocompatible                " vim
colorscheme molokai         " カラースキームの設定
set t_Co=256
set background=light            " 背景色の傾向(カラースキームがそれに併せて色の明暗を変えてくれる)

" File ---------------------------------
 set autoread                " 更新時自動再読込み
 set hidden              " 編集中でも他のファイルを開けるようにする
 set noswapfile              " スワップファイルを作らない
 set nobackup                " バックアップを取らない
 autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を除去する
 syntax on               " シンタックスカラーリングオン

 " Indent -------------------------------
 set expandtab "タブ入力を複数の空白入力に置き換える
 set tabstop=4              "Tab文字を画面上で何文字分に展開するか
 set shiftwidth=4
 "cindentやautoindent時に挿入されるインデントの幅
 set softtabstop=0 "Tabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
 set autoindent smartindent      " 自動インデント，スマートインデント

 " Assist imputting ---------------------
 set backspace=indent,eol,start      " バックスペースで特殊記号も削除可能に
 set formatoptions=lmoq          " 整形オプション，マルチバイト系を追加
 set whichwrap=b,s,h,s,<,>,[,]       " カーソルを行頭、行末で止まらないようにする
 set clipboard& " バッファにクリップボードを利用する
 set clipboard^=unnamedplus " バッファにクリップボードを利用する
 set paste
 set wrap
 " Complement Command -------------------
 set wildmenu                " コマンド補完を強化
 set wildmode=list:full          " リスト表示，最長マッチ

 " Search -------------------------------
 set wrapscan                " 最後まで検索したら先頭へ戻る
 set ignorecase              " 大文字小文字無視
 set smartcase               " 大文字ではじめたら大文字小文字無視しない
 set incsearch               " インクリメンタルサーチ
 set hlsearch                " 検索文字をハイライト

 " View ---------------------------------
 set showmatch               " 括弧の対応をハイライト
 set showcmd             " 入力中のコマンドを表示
 set showmode                " 現在のモードを表示
 set number              " 行番号表示
 set nowrap              " 画面幅で折り返さない
 set list                    " 不可視文字表示
 set listchars=tab:>\            " 不可視文字の表示方法
 set notitle             " タイトル書き換えない
 set scrolloff=5             " 行送り
 set display=uhex                " 印字不可能文字を16進数で表示

 hi ZenkakuSpace gui=underline guibg=DarkBlue cterm=underline ctermfg=LightBlue
 match ZenkakuSpace /　/   " 全角スペースの色を変更

 set cursorline              " カーソル行をハイライト
 set cursorcolumn "カーソル列をハイライト
