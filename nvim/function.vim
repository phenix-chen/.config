map <leader>rr :call CompileRun()<cr>
func! CompileRun()
    exec "w"
    echo &filetype
    if &filetype == 'vimwiki'
        exec "MarkdownPreview"
    endif
endfunc
