"this is for ctags
set tags=tags;/
nnoremap <leader>gl :!(ctags --exclude=.git --exclude=tests --exclude=test --file-scope=no *)& <CR>
nnoremap <leader>gr :!(ctags --exclude=.git --exclude=tests --exclude=test --file-scope=no -R .)& <CR>

