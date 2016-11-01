"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Canux's vim
" canuxcheng@gmail.com
" https://github.com/crazy-canux/xdevops
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Use pathogen to manage vim-scripts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tpope/vim-pathogen
" Install pathogen in ~/.vim/autoload/pathogen.vim
" Create the ~/.vim/bundle/ folder to manage all the vim scripts.
" Download other vim plugins and put it in bundle.

" If you want pathogen as a submodule as other plugins,
" Put pathogen in ~/.vim/bundle/pathogen.vim and use:
"runtime bundle/vim-pathogen/autoload/pathogen.vim
" Or
source ~/.vim/bundle/vim-pathogen-master/autoload/pathogen.vim

" Add pathogen to default path.
call pathogen#infect()
" Use other path.
"call pathogen#infect('/other/path/')

" Add the help file:
call pathogen#helptags()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Pathogen end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
