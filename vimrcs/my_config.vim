let g:comfortable_motion_no_default_key_mappings = 1

let g:ctrlp_map = '<c-p>'
nnoremap <C-f> <PageDown>
nnoremap <C-b> <PageUp>
map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python3.6 %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc
