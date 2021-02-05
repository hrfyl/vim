" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 始终开启标志列
let g:ale_sign_column_always = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 1
" let g:ale_sign_error = '✗ '
" let g:ale_sign_warning = '⚠ '
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
" normal 模式下文字改变以及离开 insert 模式的时候运行 linter
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 0         " 打开文件时不进行语法检查

" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" 语法检查引擎
let g:ale_linters = {
\   'python': ['flake8', 'autopep8'],
\   'c': ['clang'],
\   'c++': ['clang'],
\}

let g:ale_python_flake8_executable = g:_fengleyl_python
let g:ale_python_flake8_options = '-m flake8 --ignore E501'

" " c/c++
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>sp <Plug>(ale_previous_wrap)
nmap <Leader>sn <Plug>(ale_next_wrap)
" <Leader>ss触发/关闭语法检查
nnoremap <Leader>ss :ALEToggle<CR>
" <Leader>sl查看错误或警告的详细信息
nnoremap <Leader>sl :ALEDetail<CR>
call extend(g:_fengleyl_keymap.s, {
    \ 'p': 'ale-previous-wrap',
    \ 'n': 'ale-next-wrap',
    \ 's': 'ale-toggle',
    \ 'l': 'ale-detail',
\ })
" disabled for default
let b:ale_enabled = 0

