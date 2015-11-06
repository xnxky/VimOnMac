""set guifont=Literation\ Mono\ Powerline\ 16
let g:airline_powerline_fonts = 1
"setting according to C:\vim\vimfiles\bundle\vim-airline\plugin\airline.vim
let g:airline_section_c = '%<%F'
let g:airline_section_z = '%3l/%L %4v 0x%04B'
let g:airline_theme = 'dark'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

function! AccentDemo()
  let keys = ['a','b','c','e','f','g']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  let g:airline_section_a = airline#section#create(keys)
endfunction

autocmd VimEnter * call AccentDemo()

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
