"Folding Option, if noremap is used, this onw won't work
set foldmethod=manual
let html_dynamic_folds=1
"let html_number_lines=0
"unlet html_number_lines
let html_use_css=1
"let html_ignore_folding=1
noremap zy zfa}
noremap zz za

"use silent to suppress the warning in quick fix list, location list and temp
"buffer
au BufWinLeave * silent!  mkview
au BufWinEnter * silent! loadview

highlight FoldColumn guibg=Grey25 guifg=#0088FF ctermfg=White ctermbg=DarkBlue term=standout

