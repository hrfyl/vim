"		configure keybindings
"""""""""""""""""""""""""""""""""""""""""""""
" reload vimrc file
nnoremap <Leader>sv :source $MYVIMRC<CR>
" edit vimrc file
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""
"" key bindings for global

" save file
let g:_fengleyl_keymap.f = {
    \ 'name': '+file',
    \ 's': ['w', 'save-file'],
    \ 'w': ['w', 'write-file'],
\ }

" 高亮当前行
nnoremap <Leader>hl :set cul!<CR>
nnoremap <Leader>hc :set cuc!<CR>
let g:_fengleyl_keymap.h = {
    \ 'name': '+highlight',
    \ 'l': 'highlight-line',
    \ 'c': 'highlight-column',
\ }

" Quit normal mode
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>
let g:_fengleyl_keymap.q = 'quit'
let g:_fengleyl_keymap.Q = 'quit-without-save'

" Insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

let g:_fengleyl_keymap.g = {
    \ 'name': '+navigation',
    \ 'd': ['<C-]>', 'go-to-definition'],
    \ 'h': ['<C-o>', 'backward'],
    \ 'l': ['<C-i>', 'forward'],
\ }

" Move to the start of line
nnoremap H ^
vnoremap H ^
" Move to the end of line
nnoremap L $
vnoremap L $

" Quit insert mode
inoremap fd <Esc>
"inoremap jj <Esc>
"inoremap jk <Esc>

" Quit visual mode
vnoremap v <Esc>
" Redo
nnoremap U <C-r>
" Yank to the end of line
nnoremap Y y$

" Window operation
let g:_fengleyl_keymap.w = {
    \ 'name': '+window',
    \ 'w': ['<C-W>w', 'other-window'],
    \ 'd': ['<C-W>c', 'delete-window'],
    \ 'j': ['<C-W>j', 'window-below'],
    \ 'k': ['<C-W>k', 'window-up'],
    \ 'h': ['<C-W>h', 'window-left'],
    \ 'l': ['<C-W>l', 'window-right'],
    \ 's': ['<C-W>s', 'split-window-below'],
    \ '-': ['<C-W>-', 'split-window-below'],
    \ 'v': ['<C-W>v', 'split-window-right'],
    \ '|': ['<C-W>|', 'split-window-right'],
\ }

" Tab operation
let g:_fengleyl_keymap.t = {
    \ 'name': '+tab',
    \ 'p': ['gt', 'table-previous'],
    \ 'n': ['gT', 'table-next'],
    \ 'd': ['tabclose', 'delete-table'],
\ }

" buffer operation
let g:_fengleyl_keymap.b = {
    \ 'name': '+buffer',
    \ 'p': ['bprevious', 'buffer-previous'],
    \ 'n': ['bnext', 'buffer-next'],
    \ 'd': ['bdelete', 'delete-buffer'],
\ }


" search
nnoremap <Leader>/ /
nnoremap <Leader>sc :nohlsearch<CR>

" paste mode
nnoremap <Leader>sp :set paste<CR>
nnoremap <Leader>snp :set nopaste<CR>
let g:_fengleyl_keymap.s = {
    \ 'name': '+setting',
    \ 'p': 'paste-mode',
    \ 'np': 'no-paste-mode',
    \ 'c': 'no-search-highlight',
    \ 'v': 'reload-configure',
\ }

" 搜索居中显示
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" edit configurer file
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>eb :call Openconfigurefile(JoinPath('config', 'better_defaults.vim'))<CR>
nnoremap <Leader>ek :call Openconfigurefile(JoinPath('config', 'keybindings.vim'))<CR>
nnoremap <Leader>epv :call Openconfigurefile(JoinPath('config', 'plugin', 'plugins.vim'))<CR>
nnoremap <Leader>epc :call Openconfigurefile(JoinPath('config', 'plugin', 'general.vim'))<CR>
nnoremap <Leader>epb :call Openconfigurefile(JoinPath('config', 'plugin', 'better_default.vim'))<CR>
nnoremap <Leader>eg :call Openconfigurefile('gvimrc')<CR>
nnoremap <Leader>ev :call Openconfigurefile('vimrc')<CR>
nnoremap <Leader>ec :call Openconfigurefile('config.vim')<CR>
let g:_fengleyl_keymap.e = {
    \ 'name': '+edit-configure-file',
    \ 'b': 'open-better_defaults',
    \ 'k': 'open-better_default-keybindings',
    \ 'p': {
        \ 'name': '+edit-plugin-configure',
        \ 'v': 'open-plugins',
        \ 'c': 'open-plugins-configure',
        \ 'b': 'open-plugins-better_default',
    \ },
    \ 'v': 'open-vimrc',
    \ 'g': 'open-gvimrc',
    \ 'c': 'open-config',
\ }

