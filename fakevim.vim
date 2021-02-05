""""""""""""""""""""""""""""""""""""""""""""""""""""
"" set leader key(fakevim not support)
" let mapleader=' '

""""""""""""""""""""""""""""""""""""""""""""""""""""
"" load better_defaults and keybindings
set number
set showcmd         			" 输入的命令显示出来，看的清楚些
set scrolloff=3     			" 光标移动到buffer的顶部和底部时保持3行距离
set history=1000				" 历史记录数
set hlsearch					" 搜索逐字符高亮
set incsearch					" 开启实时搜索功能
set iskeyword+=_,$,@,%,#,-		" 带有如下符号的单词不要被换行分割
set nobackup					" no backup file
set noswapfile					" no swap file
set smartcase					" 搜索时自动使用大小写敏感配置
set clipboard=unnamed			" 复制到系统剪切板

"		configure keybindings
"""""""""""""""""""""""""""""""""""""""""""""
" reload
nnoremap <space>sv :source ~/.vim/fakevim.vim<CR>
" 打开vimrc文件(not support)
" nnoremap <space>ev :e ~/.vim/fakevim.vim<CR>

" save file
nnoremap <space>fs :w<CR>
nnoremap <space>fw :w<CR>

" 高亮当前行
nnoremap <space>hll :set cul<CR>
"nnoremap <space>hlc :set cuc<CR>

" Quit normal mode
nnoremap <space>q :q<CR>
nnoremap <space>Q :qa!<CR>

" Insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

" Move to the start of line
nnoremap H ^
vnoremap H ^
" Move to the end of line
nnoremap L $
vnoremap L $

" Quit insert mode
inoremap fd <Esc>

" Quit visual mode
vnoremap v <Esc>
" Redo
nnoremap U <C-r>
" Yank to the end of line
nnoremap Y y$

" Window operation
nnoremap <space>ww <C-W>w
nnoremap <space>wd <C-W>c
nnoremap <space>wj <C-W>j
nnoremap <space>wk <C-W>k
nnoremap <space>wh <C-W>h
nnoremap <space>wl <C-W>l
nnoremap <space>ws <C-W>s
nnoremap <space>w- <C-W>s
nnoremap <space>wv <C-W>v
nnoremap <space>w\| <C-W>v

" Tab operation
nnoremap <space>tn gt
nnoremap <space>tp gT

" search
nnoremap <space>/ /
nnoremap <space>sc :nohlsearch<CR>

" paste mode (not support)
" nnoremap <space>sp :set paste<CR>
" nnoremap <space>snp :set nopaste<CR>

" 搜索居中显示
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" 跳转
nnoremap <space>gd <C-]>
nnoremap <space>jd <C-]>
" 后退 
nnoremap <space>gh <C-o>
nnoremap <space>jh <C-o>
" 前进
nnoremap <space>gl <C-i>
nnoremap <space>jl <C-i>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configure for fakevim
" 跳转
" nnoremap <space>gd :tag<CR>
" nnoremap <space>jd :tag<CR>
" 后退 
" nnoremap <space>gh :GoBack<CR>
" nnoremap <space>jh :GoBack<CR>
" 前进
" nnoremap <space>gl :GoForward<CR>
" nnoremap <space>jl :GoForward<CR>
" 跳转到文件
nnoremap <space>jf :e<CR>
" 跳转到符号
nnoremap <space>js :FindUsages<CR>

" h/cpp文件切换
nnoremap <space>sf :SwitchHeaderSource<CR>
" 定义和实现切换
nnoremap <space>sd :SwitchDeclarationDefinition<CR>
" 关闭文件
nnoremap <space>bc :Close<CR>
" close current tab
nnoremap <space>td :Close<CR>

