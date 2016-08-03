"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Canux's vim
" canuxcheng@gmail.com
" https://github.com/crazy-canux/xDevOps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimscript doc
" :help vim-script-intro
" Execute Vimscript
" :source /path/to/scriptname.vim
" Or
" :call Vimscript_command_line
" See symbols
" :help keycodes
" See functions
" :help functions
" :help function-list
" Comment
" " used for comment

" <leader> default is \
let mapleader = '\'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set basic action for VIM                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show all set env and options.
" :set all
set nocompatible
set noswapfile
set nobackup
set shortmess=atI "quick startup mode
set t_Co=256
set mouse=v "n v i c h a r
set mousemodel=popup
set selection=inclusive "or exclusive
set selectmode=mouse,key
set number "show line number
set relativenumber
set cc=+1 "show right margin
set autochdir "go inside working directory of current opend file
set modifiable
set autowrite
set autoread
set smartindent
set autoindent "set auto retraction
set wildmenu "autocomplete the command line
set wildmode=list:longest "autocomplation the command
set backspace=2 "set backspace enable
set showmatch "set match model and show bracket
set linebreak "a word and return
set history=50 "set history command 50 tips
set laststatus=2 "always show the status line
set ruler "show row and column
set showcmd "show the command
set showmode "show the mode of vim
set ignorecase "ignore case when search
set incsearch "show match point when input string
set hlsearch "search highlight is on
set cursorcolumn "show current column highlight
set cursorline "show current line highlight
set modeline "modeline support
"set t_ti= t_te= "when close vim show content on terminer.
set magic "for regular expressions
set scrolloff=7
set completeopt+=menuone,longest "default is menu,preview"

" Coding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ambiwidth=double
"set langmenu=zh_CN.utf-8
set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"language messages zh_cn.utf-8

" Wrapping
set textwidth=80
set formatoptions=croqn
set sidescroll=5

" Set tab
set smarttab "start with # will not be indent
set expandtab "auto convert tab to space
set shiftround
set tabstop=4 "set tab = 4 space
set shiftwidth=4 "set auto retraction = 4 space
set softtabstop=4 "indent 4 space

" Config fold
" :za open/close current fold
" :zM close all fold
" :zR open all fold
set foldenable
"set nofoldenable
set foldmethod=syntax
"set foldmethod=indent
set foldlevel=100 "0 - close fold
set foldcolumn=5 "set width of the fold

" Config syntax
" /usr/share/vim/vim74/syntax/*.vim to config different languages.
syntax enable
syntax on

" Enable full filetype detection.
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
" Set file format
set fileformats=unix,mac,dos

""""""""""""""config map"""""""""""""
" About the map
" Check the map already used:
" :verbose map <yourmap>

" How to move the windows.
" Default use <C-w>hjkl to switch current window to other windows.

" How to close the windows
" :qa close all windows without save.
" :xa close all windows and save.
" :only close all other windows except current one.

" autoload file after modify.
autocmd! bufwritepost ~/.vimrc source %

""" Use zz to save file.
nnoremap zz :update<CR>
inoremap zz <ESC>:update<CR>gi

""" Use stardict
" sudo apt-get install sdcv stardict
function! MyDict()
    let expl=system('sdcv -n '.expand("<cword>"))
    windo if expand("%")=="diCt-tmp" | q! | endif
    " Show in the left windows.
    "50vsp diCt-tmp
    " Show in the right windows.
    botright vertical 50split diCt-temp
    setlocal buftype=nofile bufhidden=hide noswapfile
    1s/^/\=expl/
    1
endfunction
" Use shift+s to use stardict.
nmap <C-d> :call MyDict()<CR>

""" Use quickfix
" :help quickfix.txt - see the help doc.
" For c,cpp,h
" Make clean
autocmd FileType c,cpp,h nmap <F7> :make clean<CR><CR><CR>
autocmd FileType c,cpp,h imap <F7> :make clean<CR><CR><CR>
" Close quickfix windows.
autocmd FileType c,cpp,h nmap <F8> :cclose<CR><CR>
autocmd FileType c,cpp,h imap <F8> :cclose<CR><CR>
" Make and open quickfix windows.
autocmd FileType c,cpp,h nmap <F9> :make<CR><CR><CR> :copen<CR><CR>
autocmd FileType c,cpp,h imap <F9> :make<CR><CR><CR> :copen<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END                                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
