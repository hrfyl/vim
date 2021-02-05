" LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_Ctags = 'ctags'
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

" let g:Lf_PythonVersion = 3
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac' " A c a F f
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.cache/Leaderf')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'default'
let g:Lf_PreviewResult = {
    \ 'File': 0,
    \ 'Buffer': 0,
    \ 'Mru': 0,
    \ 'Tag': 0,
    \ 'BufTag': 1,
    \ 'Function': 0,
    \ 'Line': 0,
    \ 'Colorscheme': 0
\}
let g:LF_WildIgnore = {
    \ 'dir': [
        \ '.git', '.idea', '.svn', '__pycache__'
    \],
    \ 'file': [
        \ '*.sw?', '~$*', '*.bak', '*.exe', '*.o', '*.py[co]', '*.so', 
        \ '*.obj', '*.rar', '*.zip', '*.lib', '*.dll', '*.user', '*.pdb',
        \ '*.dsp', '*.dsw', '*.sdf', '*.ilk', '*.DS_Store'
    \]
\}

" LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-p>'
let g:_fengleyl_keymap.l = {
    \ 'name': '+search-tag-leaderf',
    \ 'm': ['LeaderfMru',                   'list-most-recently-used-files'],
    \ 'f': ['LeaderfFunction',              'list-functions-or-methods'],
    \ 'b': ['LeaderfBuffer',                'list-buffer'],
    \ 't': ['LeaderfTag',                   'list-tag'],
    \ 's': ['LeaderfFunctionAllPattern',    'search-function'],
    \ 'g': {
        \ 'name': '+global-search',
        \ 'f': ['LeaderfFunctionAll',       'list-functions-or-methods'],
    \ }
\ }

let g:_fengleyl_keymap.b.l = ['LeaderfBuffer',          'list-buffer']
if !has_key(g:_fengleyl_keymap, 'j')
    let g:_fengleyl_keymap.j = {
        \ 'name': 'jump',
    \ }
endif
let g:_fengleyl_keymap.j.f = ['LeaderfFile',            'list-files']
let g:_fengleyl_keymap.j.s = ['LeaderfFunctionCword',   'list-symbols-under-cword']
let g:_fengleyl_keymap.j.g = {
    \ 'name': '+global-search',
    \ 's': 'list-symbols-under-cword',
\ }

