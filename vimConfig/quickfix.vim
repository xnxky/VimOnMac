" alt+n or alt+p to navigate between entries in QuickFix
noremap <leader>ca  :execute "caddexpr '".GetCommand()."Message'"

nnoremap ]q :cnext <CR>
nnoremap [q :cprev <CR>
nnoremap [Q :cfirst <CR>
nnoremap ]Q :clast <CR>

function! GetCommand() 
    let curFile = expand('%:p')
    let lineNumber = line(".")
    return curFile.":".lineNumber.":"
endfunction

