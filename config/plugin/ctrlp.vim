" CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置CtrlP的位置及大小
let g:ctrlp_match_window = 'order:ttb,min:1,max:15,results:25'
let g:ctrlp_working_path_mode = 'ra'	    " 工作目录模式
" let g:ctrlp_by_filename = 1				" 按文件名搜索
let g:ctrlp_regexp = 1					    " 默认使用正则搜索
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'Et'
" let g:ctrlp_tabpage_position = 'lc'		" 新打开页签的位置
let g:ctrlp_open_new_file = 'r'

" 记录文件历史
let g:ctrlp_mruf_include = '\v\.(py|h|cpp|c|hpp|sh|bat|html|js)$'

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
    let g:ctrlp_use_caching = 0			" disable cache
else
    " default
    if !g:_fengleyl_os_win
        let g:ctrlp_user_command = 'find %s -type f'		" MacOSX/Linux
    endif
    " 不搜索文件类型
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|idea)$',
        \ 'file': '\v\.(exe|so|dll|lib|pyc|swp|tar.gz|zip|rar)$',
    \ }
    let g:ctrlp_use_caching = 1		    " enable cache
endif


" " CtrlP 快捷键配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <Leader>bl :CtrlPBuffer<CR>           " 查找buffer
let g:_fengleyl_keymap.b.l = 'list-buffer'

