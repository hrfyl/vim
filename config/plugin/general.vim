" vim which-key
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey '<Sapce>'<CR>
set timeoutlen=500

" 配色主题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme gruvbox
"let g:gruvbox_termcolors=16
"let g:solarized_termcolors=16
"color solarized

" airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1   " 顶部的tabline栏
"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ''
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 关闭状态显示空白符号计数"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" airline主题
" let g:airline_theme="gruvbox"
let g:airline_theme="violet"

" NERDTree Configure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=0		" 是否显示隐藏文件
let NERDTreeShowBookmarks=0		" 显示书签列表
let NERDChristmasTree=1			" 让树更好看
" let NERDTreeShowLineNumbers = 1 " 显示行号
" let NERDTreeWinSize=31		" 设置宽度
" 忽略一下文件的显示
let NERDTreeIgnore=[
	\ '\.pyc$','\~$','\.swp$','\.so$','\.exe$','\.zip$',
	\ '\.gz$','\.lib$','__pycache__','^\.git','\.DS_Store$',
	\ '\.o$','\.egg$','\.pyo$','\.rar$','^\.svn','^\.idea',
    \ '\.dsw$','\.user$','\.sdf$','\.dsp$','\.pdb$','\.ilk$'
	\ ]

" NERDTree git 
let g:NERDTreeGitStatusShowIgnored = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" NERDTree keybindings
nnoremap <Leader>tt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let g:_fengleyl_keymap.t.t = 'NERDTree-toggle'
let g:_fengleyl_keymap.t['name'] = g:_fengleyl_keymap.t['name'].'-filetree'

" nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" keybindings
let g:_fengleyl_keymap.c = {
    \ 'name': '+comment',
    \ 'c': 'comment-current-line-or-text',
    \ 'n': 'comment-current-line-or-text-nesting',
    \ ' ': 'toggles-the-comment-state',
    \ 'm': 'comments-the-given-lines',
    \ 'i': 'toggles-the-comment-state-individually',
    \ 's': 'comments-selected-lines',
    \ 'y': 'commented-line(s)',
    \ '$': 'comments-cursor-to-end-of-line',
    \ 'A': 'adds-comment-delimiters-to-the-end-of-line-and-inster',
    \ 'a': 'switches-delimiters',
    \ 'l': 'comment-a-few-line-backwards',
    \ 'b': 'comment-a-few-lines-forwards',
    \ 'u': 'uncomments-the-selected-line(s)',
\ }

" undo tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:undotree_WindowLayout = 2			" layout
let g:undotree_SetFocusWhenToggle = 1	" 打开undotree时自动聚焦
" 撤销树快捷键
" nmap <Leader>u :UndotreeToggle<CR>
let g:_fengleyl_keymap.u = ['UndotreeToggle', 'undo-tree-toggle']

" vim-multiple-cursors Default mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""
" for markdown-preview
if g:_fengleyl_os_win
    let g:mkdp_path_to_chrome = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
endif
let vim_markdown_preview_github=1

" MarkdownPreview快捷键配置
" nmap <Leader>mv :MarkdownPreview<CR>       " 打开md实时预览
" nmap <Leader>mc :MarkdownPreviewStop<CR>   " 关闭md实时预览
let g:_fengleyl_keymap.m = {
    \ 'name': '+markdown',
    \ 'v': ['MarkdownPreview',      'markdown-preview'],
    \ 'c': ['MarkdownPreviewStop',  'markdown-preview-stop'],
\ }

" for markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""


" vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotion 快速跳转快捷键说明(默认)
" <Leader><Leader>w     <Leader><Leader>b (跳到当前光标后/前)
" <Leader><Leader>s     (搜索跳转)
" <Leader><Leader>j     <Leader><Leader>k  (行级跳转)
" <Leader><Leader>h     <Leader><Leader>l   (行内跳转)
" <Leader><Leader>.     (重复上一次动作)

" vim-smooth-scroll
"""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" buffer close
"""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>bc :Bclose<CR>
let g:_fengleyl_keymap.b.c = 'delete-buffer-without-close-window'

" sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""
" map s <Plug>Sneak_s
" map S <Plug>Sneak_S
" nmap f <Plug>Sneak_f
" nmap F <Plug>Sneak_F
" nmap t <Plug>Sneak_t
" nmap T <Plug>Sneak_T

" Ctrlsf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlsf_auto_close = {
    \ "normal" : 1,
    \ "compact": 1
\ }                                                 " 自动关闭CtrlSF窗口
let g:ctrlsf_auto_focus = {
    \ "at": "start",
\ }                                                 " 自动聚焦搜索窗口 
let g:ctrlsf_default_view_mode = 'compact'          " 紧凑模式
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_extra_root_markers = ['.git', '.root', '.svn']
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '150'
let g:ctrlsf_default_root = 'project+fw'
let g:ctrlsf_indent = 2
" let g:ctrlsf_extra_backend_args = {
"     \ 'pt': '--home-ptignore',
" \ }

" keybindings for ctrlsf
let g:_fengleyl_keymap.f.name = g:_fengleyl_keymap.f.name.'-find'
vmap <Leader>fv <Plug>CtrlSFVwordPath
vmap <Leader>fV <Plug>CtrlSFVwordExec
call extend(g:_fengleyl_keymap.f, {
    \ 'f': ['<Plug>CtrlSFPrompt',       'find-something'],
    \ 'V': 'find-selected-word',
    \ 'v': 'find-selected-word-immediately',
    \ 'U': ['<Plug>CtrlSFCwordPath',    'find-word-under-the-cursor'],
    \ 'u': ['<Plug>CtrlSFCwordExec',    'find-word-under-the-cursor-immediately'],
    \ 'p': ['<Plug>CtrlSFPwordPath',    'find-use-last-search-pattern'],
    \ 'o': ['CtrlSFOpen',               'open-ctrlsf-window'],
    \ 'c': ['CtrlSFClose',              'close-ctrlsf-window'],
    \ 't': ['CtrlSFToggle',             'find-teardown'],
\ })

