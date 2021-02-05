"					load configure
"""""""""""""""""""""""""""""""""""""""""""
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config.vim'

" 					插件管理
""""""""""""""""""""""""""""""""""""""""""""
execute 'source' JoinPath(g:_fengleyl_init_path, 'config', 'plugin', 'plugins.vim')
execute 'source' JoinPath(g:_fengleyl_init_path, 'config', 'better_defaults.vim')
execute 'source' JoinPath(g:_fengleyl_init_path, 'config', 'plugin', 'better_default.vim')

"				GVIM
""""""""""""""""""""""""""""""""""""""""""""""
" GVIM下的设置
if (has("gui_running"))
	execute 'source' JoinPath(g:_fengleyl_init_path, 'gvimrc')
endif

" register to vim which key
call which_key#register('<Space>', 'g:_fengleyl_keymap')

