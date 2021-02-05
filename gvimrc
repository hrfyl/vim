" backspace
set backspace=indent,eol,start
set nocompatible

set lines=42 columns=130            " 窗口大小
winpos 160 5                        " 设置窗口的位置

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if g:_fengleyl_os_win
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10:cANSI:qDRAFT
	set guifontwide=Microsoft\ YaHei\ Mono:h9
    
    if has('libcall')
	    function! ToggleFullScreen()
		    call libcallnr('gvimfullscreen.dll', "ToggleFullScreen", 0)
	    endfunction
	    noremap <Leader>tf :call ToggleFullScreen()<CR>

        let g:_fengleyl_vim_alpha = 240
        function! SetAlpha(alpha)
            let g:_fengleyl_vim_alpha = g:_fengleyl_vim_alpha + a:alpha
            if g:_fengleyl_vim_alpha < 180
                let g:_fengleyl_vim_alpha = 180
            endif
            if g:_fengleyl_vim_alpha > 255
                let g:_fengleyl_vim_alpha = 255
            endif
            call libcall('gvimfullscreen.dll', 'SetAlpha', g:_fengleyl_vim_alpha)
        endfunction
        
        noremap <Leader>bj <Esc>:call SetAlpha(3)<CR>
        noremap <Leader>bk :call SetAlpha(-3)<CR>

        let g:_fengleyl_vim_top_most = 0
        function! SwitchVimTopMostMode()
            if g:_fengleyl_vim_top_most == 0
                let g:_fengleyl_vim_top_most = 1
            else
                let g:_fengleyl_vim_top_most = 0
            endif
            call libcall('gvimfullscreen.dll', 'EnableTopMost', g:_fengleyl_vim_top_most)
        endfunction
        noremap <Leader>tm :call SwitchVimTopMostMode()<CR>
    endif
elseif (has('mac'))
    set guifont=Source\ Code\ Pro\ for\ Powerline:h13
endif


" keybindings for vim which key
let g:_fengleyl_keymap.t.f = 'full-screen'
let g:_fengleyl_keymap.t.m = 'top-most-mode'
let g:_fengleyl_keymap.b.j = 'backgroud-transparent+3'
let g:_fengleyl_keymap.b.k = 'backgroud-transparent-3'

