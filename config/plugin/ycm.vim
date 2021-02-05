" You Complete Me
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 1	" 第一个字符后开始补全
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_server_log_level = 'warning'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclost_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0                " 自动加载.ycm_extra_conf文件,不提示
let g:ycm_key_invoke_completion = '<c-z>'
noremap <c-z> <NOP>
let g:ycm_semantic_triggers =  {
    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
    \ 'cs,lua,javascript': ['re!\w{2}'],
    \ }
" 不显示函数原型
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
" ycm 诊断
"letPlug 'mhinz/vim-signify' g:ycm_show_diagnostics_ui = 0
" 白名单,打开以下类型文件时启用ycm分析
let g:ycm_filetype_whitelist = { 
    \ "h":1,
    \ "c":1,
    \ "hh":1,
    \ "cpp":1, 
    \ "hpp":1,
    \ "objc":1,
    \ "sh":1,
    \ "zsh":1,
    \ "python":1,
    \ "vim":1,
    \ "go":1,
    \ }
" 补全上下选择
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
" set global extra conf
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" set for virtualenv
let g:ycm_python_binary_path = g:_fengleyl_python
let g:ycm_error_symbol = '>>'
let g:ycm_warning_synbol = '--'

" You Complete Me
nnoremap <Leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:_fengleyl_keymap.d = 'ycm-show-detailed-diagnostic'
let g:_fengleyl_keymap.j = {
    \ 'name': '+jump',
    \ 'd': 'ycm#goto-definition-else-declaration',
\ }

" Golang
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'gopls',
  \     'cmdline': [ '~/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls' , "-rpc.trace" ],
  \     'filetypes': [ 'go' ],
  \     "project_root_files": [ "go.mod" ]
  \   }
  \ ]

" let g:go_def_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'
" let g:go_info_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'
