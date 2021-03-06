set nocompatible
let mapleader = ','
set diffopt=filler,context:0
set cf  " Enable error files & error jumping.
set clipboard=unnamed
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set timeoutlen=1000 " Time to wait after ESC (default causes an annoying delay)
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list  " comment this one, the trailing $ will disappear
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes 

"turn off menu bar and tool bar
set guioptions-=m
set guioptions-=T
" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=$HOME/Tools/vim/backup " Where backups will go.
set directory=$HOME/Tools/vim/tempDir     " Where temporary files will go.

" Add recently accessed projects menu (project plugin)
set viminfo='100,f1

syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme vividchalk

"Disable auto comment insertion in the next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""************************************************************************************'
"self defined mapping

"this is modifying vimrc on spot
:nnoremap <leader>ev :vsp $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

"this is for addng double quote around words
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:vnoremap <leader>" o<esc>i"<esc>gvo<esc>a"<esc>l
:vnoremap <leader>' o<esc>i'<esc>gvo<esc>a'<esc>l
"*************************************************************************************
"eaiser window switch
"if we use <C-w>j<C-w>_, the horizontal split will automattly stack up if it's
"not the current window
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
"set each window min height and width
set wmh=0
set wmw=0

"complete the pair of ( [ and {
"note: M-something is Alt+Something
"inoremap <M-(> ()<ESC>i  
"inoremap <M-[> []<ESC>i  
"inoremap <M-{> {}<ESC>i  
"noremap <C-,>  <C-W><lt>

"***********************************************************************************
nnoremap <esc> :noh<CR><esc>

"persistent undo
set undofile
set undodir=$HOME/Tools/vim/tempDir
set undolevels=999 "maximum number of changes that can be undone

au BufWinEnter,BufNewFile * silent tab
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set encoding=utf-8
set diffopt+=iwhite
let g:fugitive_github_domains = ['github.com', 'git.airbnb.com']

"remove the crontab conflict
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd BufNewFile,BufRead *.json set ft=javascript

"see https://github.com/elzr/vim-json/issues/23#issuecomment-40293049
"about indentLine issue on json concealing
let g:indentLine_noConcealCursor=""
