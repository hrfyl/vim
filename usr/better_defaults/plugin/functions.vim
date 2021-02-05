if exists("g:_fengleyl_configure_function")
    finish
endif
let g:_fengleyl_configure_function = 1

function! Foldmethod(model)
    let &foldmethod = a:model
    echo 'current foldmethod:' &foldmethod
endfunction

function! CurrentFoldmethod()
    echo 'current foldmethod:' &foldmethod
endfunction

