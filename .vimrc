syntax enable
filetype plugin indent on
let mapleader = " " " map leader to Space
set tabstop=3
set shiftwidth=3
set expandtab
colorscheme slate
set number
"set colorcolumn=80
"Function Curly Bracket
inoremap {<CR> {<CR>}<Esc>ko
"Bracket and Quote pair
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha


" Indent multiple lines quickly
vnoremap < <gv
vnoremap > >gv

" vim plug auto install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim plug section
call plug#begin()
   Plug 'itchyny/lightline.vim' "lightline
   Plug 'mengelbrecht/lightline-bufferline' "lightline bufferline

call plug#end()

"lightline and lightline bufferline
set noshowmode "disable mode of the bottom
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
set showtabline=2
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#composed_ordinal_number_map = {
\ 1:  '1.', 2:  '2.', 3:  '3.', 4:  '4.', 5:  '5.',
\ 6:  '6.', 7:  '7.', 8:  '8.', 9:  '9.'}
"Switch buffer
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

map <S-L> :bnext<cr>
map <S-H> :bprevious<cr>
map <leader>d :bdelete<cr>


"Delete buffer
nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

set hidden

"highlight search
set hlsearch
map <Leader>n :noh<cr>
