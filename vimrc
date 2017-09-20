""""""""""""""""""
"""" PATHOGEN 
""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""
"""" SETTINGS 
""""""""""""""""""
syntax on
filetype plugin indent on

let mapleader=" "           " Set my leader key to ' '
set number                  " Show number lines
set tabstop=2               " Set tabs to 2 spaces 
set shiftwidth=2            " Autoindent with 2 space 
set expandtab               " Use spaces, not tabs
set clipboard=unnamed       " Universal clipboard
set directory=~/.backup/vim/swap
set mouse=a
set runtimepath^=~/.vim/bundle/ctrlp.vim

""""""""""""""""""
"""" TEMPLATES 
""""""""""""""""""
au BufNewFile,BufRead *.i set filetype=swig
au BufNewFile,BufRead *.swg set filetype=swig
au BufNewFile,BufRead *.ejs set filetype=ejs
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype haml setlocal ts=2 sts=2 sw=2
autocmd Filetype slim setlocal ts=2 sts=2 sw=2
autocmd Filetype erb setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4

hi Search cterm=NONE ctermfg=grey ctermbg=LightGray
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
