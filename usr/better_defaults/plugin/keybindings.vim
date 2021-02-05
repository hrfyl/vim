" keybindings
nnoremap <Leader>fmc :call CurrentFoldmethod()<CR>
nnoremap <Leader>fmi :call Foldmethod('indent')<CR>
nnoremap <Leader>fms :call Foldmethod('syntax')<CR>
nnoremap <Leader>fme :call Foldmethod('expr')<CR>
nnoremap <Leader>fmm :call Foldmethod('marker')<CR>
nnoremap <Leader>fmn :call Foldmethod('manual')<CR>
nnoremap <Leader>fmd :call Foldmethod('diff')<CR>

if !has_key(g:_fengleyl_keymap, 'f')
    let g:_fengleyl_keymap.f = {
        \ 'name': '+foldmethod',
    \ }
endif

let g:_fengleyl_keymap.f.m = {
    \ 'name': '+foldmethod',
    \ 'c': 'current-foldmethod',
    \ 'i': 'foldmethod-indent',
    \ 's': 'foldmethod-syntax',
    \ 'e': 'foldmethod-expr',
    \ 'm': 'foldmethod-marker',
    \ 'n': 'foldmethod-manual',
    \ 'd': 'foldmethod-diff',
\ }

