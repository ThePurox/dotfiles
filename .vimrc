let mapleader =" "

call plug#begin('~/.vim/plugged')
Plug 'vim-latex/vim-latex'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'mboughaba/i3config.vim'
Plug 'jreybert/vimagit'
call plug#end()

set shiftwidth=4
set tabstop=4
syntax on
set autoindent
set smartindent
set number relativenumber
set mouse=a
set mousem=popup
set wildignore+=*.pdf,*.aux,*.gif,*.png,*.nav,*.JPG
set wildmode=longest,list,full
set wildmenu
let g:tex_flavor='latex'

map <leader>f :Goyo \| set linebreak<CR>
map <leader>e :setlocal spell! spelllang=en_us<CR>
map <leader>d :setlocal spell! spelllang=de_de<CR>

set splitbelow splitright
" Shortcut splitting "
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Check file in shellcheck"
map <leader>s :!clear && shellcheck %<CR>

" autocmd VimLeave *.tex !texclear %

" copy selected text to system clipboard
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-p> "+P

"auto delete trailing whitespaces

autocmd BufWritePre * %s/\s\+$//e

autocmd BufWritePost ~/.Xresources,~/.Xdefaults,.extend.Xresources !xrdb %
