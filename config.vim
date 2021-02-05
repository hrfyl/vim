if exists("g:_fengleyl_loaded")
	finish
endif
let g:_fengleyl_loaded = 1

" Detect root directory of vim
let g:_fengleyl_init_path = fnamemodify(expand('<sfile>'),
      \ ':p:h:gs?\\?'.((has('win16') || has('win32')
      \ || has('win64'))?'\':'/') . '?')
lockvar g:_fengleyl_init_path

let g:_fengleyl_plugin_path = g:_fengleyl_init_path.'/plugged'
let g:_fengleyl_plug_vim = g:_fengleyl_init_path.'/autoload'
if has('win16') || has('win32') || has('win64')
	let g:_fengleyl_plugin_path = g:_fengleyl_init_path.'\plugged'
	let g:_fengleyl_plug_vim = g:_fengleyl_init_path.'\autoload'
endif
lockvar g:_fengleyl_plugin_path

" join path
function! JoinPath(...)
    if has('win16') || has('win32') || has('win64')
		return join(a:000, '\')
	else
		return join(a:000, '/')
	endif
endfunction 

" OS
let g:_fengleyl_os_win = 0
if has('win16') || has('win32') || has('win64')
    if has('win64')
        let g:_fengleyl_win_bin = JoinPath(g:_fengleyl_init_path, 'usr', 'win64')
    else
        let g:_fengleyl_win_bin = JoinPath(g:_fengleyl_init_path, 'usr', 'win32')
    endif
    let $PATH = JoinPath(g:_fengleyl_win_bin, ';', $PATH)
	let g:_fengleyl_os_win = 1
endif
lockvar g:_fengleyl_os_win

" configure default python version(default python3)
let g:_fengleyl_python = 'python'
if has('python3') && executable('python3')
    let g:_fengleyl_python = 'python3'
endif
lockvar g:_fengleyl_python

" open configure file
function! Openconfigurefile(filename)
	execute 'edit' JoinPath(g:_fengleyl_init_path, a:filename)
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""
"" set leader key
let mapleader=' '
" keybindings for vim which key
let g:_fengleyl_keymap = {
    \ '/': 'search',
\ }

