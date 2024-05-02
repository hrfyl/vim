"				VIM显示设置
""""""""""""""""""""""""""""""""""""""""""""
set number						" 行号
syntax on
set cul                         " 高亮光标所在行
"set cuc
"set shortmess=atI   			" 启动的时候显示那个援助乌干达儿童的提示
set go=             			" 不要图形按钮
"autocmd InsertLeave * se nocul  " 用浅色高亮当前行
"autocmd InsertEnter * se cul	" 用浅色高亮当前行
set showcmd         			" 输入的命令显示出来，看的清楚些
"set whichwrap+=<,>,h,l   		" 允许backspace和光标键跨越行边界(不建议)
set scrolloff=3     			" 光标移动到buffer的顶部和底部时保持3行距离
set laststatus=2   		 		" 启动显示状态行(1),总是显示状态行(2)
set foldmethod=syntax			" 基于缩进或语法进行代码折叠
autocmd FileType python setlocal foldmethod=indent
set foldlevel=99

set keyprotocol=
let &term=&term

" 启动 vim 时关闭折叠代码
set nofoldenable
set nowrap						" 关闭换行

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 设置文件编码格式
set encoding=utf-8
set fileencodings=utf-8,chinese,cp936,gbk,gb18030,gb2312,latin-1
" set fileencoding=utf-8
set fileencoding=
"解决consle提示信息输出乱码
language messages zh_CN.utf-8

set autoindent				" 自动缩进
set cindent

set tabstop=4				" Tab键的宽度
set softtabstop=4			" 统一缩进为4
set shiftwidth=4

set expandtab				" 用空格代替制表符
set smarttab				" 在行和段开始处使用制表符
set history=1000			" 历史记录数

set hlsearch				" 搜索逐字符高亮
set incsearch 				" 开启实时搜索功能

set langmenu=zh_CN.UTF-8 	" 语言设置
set helplang=cn

set cmdheight=1 			" 命令行高度
filetype on 				" 侦测文件类型
filetype plugin on 			" 载入文件类型插件
filetype indent on 			" 为特定文件类型载入相关缩进文件
set viminfo+=! 				" 保存全局变量
set iskeyword+=_,$,@,%,#,- 	" 带有如下符号的单词不要被换行分割
"set gcr=a:block-blinkon0    " 禁止光标闪烁

set noerrorbells			" no error bell
set novisualbell
set vb t_vb=                " 关闭响铃

" 				VIM实用功能
"""""""""""""""""""""""""""""""""""""""""""""
set wildmenu				" vim 自身命令行模式智能补全

set nobackup				" no backup file
set noswapfile				" no swap file

"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set backspace=indent,eol,start	" backspace
set nocompatible

set ignorecase smartcase	" 搜索时自动使用大小写敏感配置

set clipboard=unnamed		" 复制到系统剪切板
set mouse=a					" 启用鼠标支持

" load keybindings
execute 'source' JoinPath(g:_fengleyl_init_path, 'config', 'keybindings.vim')

