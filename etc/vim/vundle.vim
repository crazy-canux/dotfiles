"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Use vundle manage vim-scripts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" How to use vundle.
" Command line: vim +PluginInstall +qall
" In vim run
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Be improved
set nocompatible
" Enable vundle.
filetype off
" Put vundle in ~/.vim/bundle/ by default.
" git clone https://github.com/VundleVim/Vundle.vim
" Path of vundle
"set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/plugins/Vundle.vim

" Path of other plugins
"call vundle#begin()
call vundle#begin('~/.vim/plugins/')

" Let vundle manage vundle.
Plugin 'VundleVim/Vundle.vim'

" Colors
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
"https://github.com/itchyny/lightline.vim
"https://github.com/powerline/powerline

" Doc tools
" Markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
" reStructuredText
Plugin 'Rykka/riv.vim'
" Gist
Plugin 'mattn/gist-vim'
" Wiki
Plugin 'vimwiki/vimwiki'

" Config tools
Plugin 'crazy-canux/nagios.vim'
Plugin 'crazy-canux/icinga2.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'nblock/vim-dokuwiki'

" DataBase
Plugin 'vim-scripts/dbext.vim'

" Web
" Javascript syntax and indentation
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
" Html/Css
Plugin 'mattn/emmet-vim'
" Html
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Languages
" C
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/a.vim'
" Java
Plugin 'artur-shaik/vim-javacomplete2'
" Python
Plugin 'ivanov/vim-ipython'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
" go
Plugin 'fatih/vim-go'
" ruby and rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" coffee-script
Plugin 'kchmck/vim-coffee-script'
" clojure
Plugin 'tpope/vim-fireplace'

" Develop tools
" Tmux tools
Plugin 'benmills/vimux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tmux-plugins/vim-tmux'
" Find tools
Plugin 'ctrlpvim/ctrlp.vim'
"https://github.com/kien/ctrlp.vim
"https://github.com/Shougo/unite.vim
"https://github.com/vim-scripts/FuzzyFinder
" Grep tools
Plugin 'rking/ag.vim'
"https://github.com/mileszs/ack.vim
" Git tools
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Read doc tools
Plugin 'KabbAmine/zeavim.vim'
" Collaborative editing
Plugin 'FredKSchott/CoVim'
" Comment tools
Plugin 'scrooloose/nerdcommenter'
"https://github.com/tomtom/tcomment_vim
"https://github.com/tpope/vim-commentary

" IDE tools
Plugin 'vim-scripts/winmanager'
"https://github.com/srinathava?tab=repositories
Plugin 'vim-scripts/taglist.vim'
"https://github.com/yegappan/taglist
Plugin 'jlanzarotta/bufexplorer'
" Other options
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
" Syntastic
Plugin 'scrooloose/syntastic'
" Autocomplete with symbol
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-unimpaired'
" Indent
Plugin 'nathanaelkane/vim-indent-guides'
"https://github.com/Yggdroot/indentLine
" Plugins build with python:
" Autocomplete with code
Plugin 'Valloric/YouCompleteMe'
" Need more action:
" cd YouCompleteMe
" git submodule upate --init --recursive
" ./install.py --clang-completer --tern-completer
"https://github.com/ervandew/supertab
"https://github.com/rip-rip/clang_complete
"https://github.com/vim-scripts/AutoComplPop
"https://github.com/Shougo/neocomplcache.vim
"https://github.com/Shougo/neocomplete.vim
" Snippet tools
Plugin 'SirVer/ultisnips'
"https://github.com/garbas/vim-snipmate
"https://github.com/msanders/snipmate.vim
"https://github.com/Shougo/neosnippet.vim
" Snippet files
Plugin 'honza/vim-snippets'
"https://github.com/scrooloose/snipmate-snippets
"https://github.com/Shougo/neosnippet-snippets

" Other tools
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-dispatch'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
" Aligning things
Plugin 'godlygeek/tabular'
"https://github.com/junegunn/vim-easy-align
" Rainbow
Plugin 'kien/rainbow_parentheses.vim'
"https://github.com/luochen1990/rainbow
" Whitespace
Plugin 'ntpeters/vim-better-whitespace'
"https://github.com/bronson/vim-trailing-whitespace
" Undo
Plugin 'sjl/gundo.vim'
" Calendar
Plugin 'itchyny/calendar.vim'
" Icons for vim plugins
Plugin 'ryanoasis/vim-devicons'

" End vundle.
call vundle#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Vundle end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Call other configuration files
source ~/myCode/xDevOps/etc/vim/basic.vim
source ~/myCode/xDevOps/etc/vim/header.vim
source ~/myCode/xDevOps/etc/vim/scripts.vim
