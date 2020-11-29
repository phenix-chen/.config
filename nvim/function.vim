map <c-r> :call CompileRun()<cr>
func! CompileRun()
    exec "w"
    if &filetype == 'markdown'
        exec "MarkdownPreview"
    endif
endfunc
