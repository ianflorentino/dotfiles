""""""""""""""""""
"""" PATHOGEN 
""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""
"""" SETTINGS 
""""""""""""""""""
syntax on
filetype plugin indent on
autocmd VimEnter * NERDTree
set number
set tabstop=2 
set shiftwidth=2 
set expandtab

""""""""""""""""""
"""" TEMPLATES 
""""""""""""""""""
au BufNewFile,BufRead *.i set filetype=swig
au BufNewFile,BufRead *.swg set filetype=swig
au BufNewFile,BufRead *.ejs set filetype=ejs
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype haml setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype erb setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4

