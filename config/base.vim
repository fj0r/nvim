set nocompatible " 关闭 vi 兼容模式，避免以前版本的一些bug和局限
set shortmess=atI
set noerrorbells
set novisualbell
set t_vb=
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set wildmenu
"处理未保存或者只读文件时,给出提示
set confirm

set number " 显示行号
set relativenumber
"set paste  " 解决拷贝的时遇到注释会自动注释后续所有行的问题
set ruler " 打开状态栏标尺 在编辑过程中，在右下角显示光标位置的状态行
set showmatch " 显示匹配的括号
set showcmd " 输入命令回显

syntax on " 自动语法高亮

set display+=lastline " Always try to show a paragraph’s last line.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
set wrap " Enable line wrapping.

set ambiwidth=double " 设置为双字宽显示，否则无法完整显示如:☆
set backspace=2 " 解决 backspace 按键删除的问题 http://cenalulu.github.io/linux/why-my-backspace-not-work-in-vim/
"set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix "

set hlsearch " 搜索时高亮显示被找到的文本
set ignorecase " 搜索时忽略大小写，
set smartcase "有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果

set magic " 设置魔术
set autoread
set wildignore+=.pyc,.swp

