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

" Some funky status bar code its seems
" https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
set laststatus=2            " set the bottom status bar

function! ModifiedColor()
    if &mod == 1
        hi statusline ctermfg=Brown ctermbg=0
    else
        hi statusline ctermfg=8 ctermbg=15
    endif
endfunction

au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
hi statusline ctermfg=8 ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
"modified flag

set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" Indent multiple lines quickly
vnoremap < <gv
vnoremap > >gv
