"{{{1  autocmd vim配置文件 SQL，打开折叠 
augroup filetype_vim
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType sql set foldmethod=marker
    autocmd FileType html set foldmethod=indent
    autocmd FileType sql        nnoremap <buffer> <leader>nc 0i--{{{1 <esc>
    autocmd FileType sql        nnoremap <buffer> <leader>nb 0i--}}} <esc>
    autocmd FileType html       nnoremap <buffer> <leader>nc 0i//{{{1 <esc>
    autocmd FileType html       nnoremap <buffer> <leader>nb 0i//}}} <esc>
augroup END
