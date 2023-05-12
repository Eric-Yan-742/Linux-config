syntax enable
filetype plugin indent on
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
"show save status
set laststatus=2
"style for status line
hi StatusLine ctermbg=black ctermfg=red
