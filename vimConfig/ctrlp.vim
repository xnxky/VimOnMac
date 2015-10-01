"open ctrlp
let g:ctrlp_map = '<leader>p'
"ingore those dirs
"set wildignore+=*/build/**
"disable caching
let g:ctrlp_use_cahcing=0
let g:ctrlp_lazy_update = 100 "Only refreshes the results every 100ms so if you type fast searches don't pile up
let g:ctrlp_user_command = 'find %s -type f | egrep -iv "(\.(eot|gif|gz|ico|jpg|jpeg|otf|png|psd|pyc|svg|ttf|woff|zip)$)|(/\.)|((^|\/)tmp\/)"' "Quicker indexing
