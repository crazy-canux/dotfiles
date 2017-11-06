"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Canux's vim
" canuxcheng@gmail.com
" https://github.com/crazy-canux/dotfiles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config all plugins.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""">>> Colors & theme

""""""""""config colorsschemes""""""""""
" Default colorscheme define in /usr/share/vim/vim74/colors/
" This include a lots of colorscheme.
"colorscheme c
"c
"DevC++
"codeblocks_dark
"eclipse
"python
"django
"golden
"winter
"orange
"greens
"greenvision

""""""""""config colors-solarized""""""""""
" Need set the terminator work with this.
set background=dark
colorscheme solarized
let g:solarized_termcolors = 256

""""""""""config tomorrow-theme""""""""""

""">>> Status line

"""""""""config airline"""""""""""""
" More good than powerline and lightline
" Need https://github.com/powerline/fonts

" Enable/disable enhanced tabline.
let g:airline#extensions#tabline#enabled = 1
" Enable/disable tmuxline.
let g:airline#extensions#tmuxline#enabled = 0
" Enable powerline symbols.
let g:airline_powerline_fonts = 1
" When no branch detect show this
let g:airline#extensions#branch#empty_message = 'None'
" Set theme
let g:airline_theme = 'dark'

" Define the symbols.
" This is unicode symbols.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"""""""""config tmuxline"""""""""""""
" Status line for tmux
let g:tmuxline_preset = 'powerline'
let g:tmuxline_theme = 'powerline'

"""""""""config lightline"""""""""""""

"""""""""config powerline"""""""""""""

""">>> Doc tools

""""""""""config vim-markdown"""""""""""""
" Syntax highlighting, matchinig rules.

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2

""""""""""config vim-instant-markdown""""""""""
" Instant dispaly
" sudo npm install instant-markdown-d -g

" F12 to open the browser
nnoremap <F12> <ESC> :InstantMarkdownPreview<CR>

" Auto start when open .md file.
let g:instant_markdown_autostart = 0
" Not update the display in realtime.
let g:instant_markdown_slow = 0

"""""""""""config riv"""""""""""
" For reStructuredText

"""""""""""config gist"""""""""""

"""""""""""config wiki"""""""""""

"""""""""""config vim-json""""""""

""">>> Configuration tools

"""""""""config nagios"""""""""

"""""""""config puppet"""""""""

"""""""""config nginx"""""""""

"""""""""config dokuwiki"""""""""

""">>> Database

""""""""""""config dbext""""""""""
" For database.

""">>> Web

"""""""""config vim-javascript""""""""""
" For javascript Syntax and indent.

""""""""""config tern-for-vim""""""""""
" For javascript, autocomplate and so on.
" Use YCM/tern instead.
" omnifunc=tern#Complete

" Need install node.js and npm first
" Install tern:
" cd tern-for-vim; sudo npm install

""""""""""config emmet-vim""""""""""
" For html/css
" omnifunc=emmet#completeTag

" Just enable for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" Enable all function for all mode.
let g:user_emmet_mode = 'a'
" Default use <C-y>, to trigger, you can change <C-y>,
let g:user_emmet_leader_key = '<C-y>'
" Enable emmet for xml.
let g:user_emmet_settings = {
            \ 'xml': {
            \ 'extends': 'html',
            \ },
            \ 'haml': {
            \ 'extends': 'html',
            \ },}

""""""""""config sparkup""""""""""
" For html
" If you use pathogen you need to install
" cd sparkup; make vim-pathogen
" Use <C-e> to expand tags to html format.

""">>> C/C++

""""""""""config c.vim""""""""""
" Not use <F9>, use shift+ctrl+F9.

""""""""""config a.vim""""""""""
" Jump from .c and .h

""">>> Java

autocmd BufNewFile,BufReadPre *.java nmap <F9> :!javac %<CR>:!java %:r<CR>

""""""""""config javacomplate2""""""""""
" omnifunc=javacomplete#Complete

autocmd FileType java,jsp setlocal omnifunc=javacomplete#Complete

" To add all missing imports with F7
nmap <F7> <Plug>(JavaComplete-Imports-AddMissing)
imap <F7> <Plug>(JavaComplete-Imports-AddMissing)

" To remove all missing imports with F8
nmap <F8> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F8> <Plug>(JavaComplete-Imports-RemoveUnused)

""">>> Python

"""""""""""config virtualenv"""""""""

"""""""""""config ipython"""""""""
" Disable default mapping:
let g:ipy_perform_mappings = 0
let g:ipy_completefunc = 'local'

""""""""""config jedi-vim""""""""""
" Autocomplete goto and pydoc for python
" Jedi is better than rope for IDE support.
" omnifunc=jedi#completions
" pip install jedi

" Use jedi to complete.
let g:jedi#completions_enabled = 1
" Default use <C-Space> to complete.
let g:jedi#completions_command = "<C-Space>"

" Use jedi for goto
" Go to definition (or assignment), default <leader>d.
let g:jedi#goto_command = '<leader>d'
" Go to assignment, default <leader>g.
let g:jedi#goto_assignments_command = '<leader>g'

" Use jedi for documentation
" Show pydoc documentation, default <k>.
let g:jedi#documentation_command = '<leader>k'

" Other functions
" Rename, default <leader>r
let g:jedi#rename_command = '<leader>r'
" Show usages of a name, default <leader>n.
let g:jedi#usages_command = '<leader>n'

""""""""""config python-mode""""""""""
" Include pylint, pyflakes, pep8, pep257, pydoc, mccabe, rope, autopep8.

" Turn on the whole plugin
let g:pymode = 1
" Turn off plugin's warning
let g:pymode_warnings = 1
" Trim unused white space on save
let g:pymode_trim_whitespaces = 1
" Setup default python options
let g:pymode_options = 1
" Setup max line length
let g:pymode_options_max_line_length = 79
" Enable colorcolumn display at max_line_length
let g:pymode_options_colorcolumn = 1
" Setup pymode - quickfix window
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
" Set python version
let g:pymode_python = 'python' "or python3
" Enable pep8 indent
let g:pymode_indent = 1
" Enable pymode folding
let g:pymode_folding = 1
" Enable automatic virtualenv detection
let g:pymode_virtualenv = 1
"let g:pymode_virtualenv_path = $VIRTUAL_ENV

" Enable pymode-motion
let g:pymode_motion = 1
" C - class
" M - function(or method)
" [[ - jump to previous class or function
" ]] - jump to next class or function
" [M - jump to previous class or method
" ]M - jump to next class or method
" aC - select a class
" iC - select a inner class
" aM - select a function(or method)
" iM - select a inner function(or method)

" Turn on the run code script
let g:pymode_run = 1
" F9 to run python code
autocmd FileType python map <buffer> <F9> :PymodeRun<CR>
" Bind key to run python code, default <leader>r
let g:pymode_run_bind = ''

" Enable functionality
let g:pymode_breakpoint = 1
" Bind keys, Add/Remove breakpoint, default <leader>b
let g:pymode_breakpoint_bind = '<leader>b'
"let g:pymode_breakpoint_cmd = ''

" Turn on pydoc
let g:pymode_doc = 1
" Show pydoc for current word, default <k>.
let g:pymode_doc_bind = ''

"--------checkers-------
" Use Syntastic instead.
" Pylama = pyflakes + pep8 + mccabe + pylint + pep257.
" Flake8 = pyflakes + pep8 + mccabe.
" Use pyflakes/pylint and pep8 for code syntastic check.
" Use mccabe for complexity check.
" Use pep257 for doc syntastic check.
" Use autopep8 for auto formats python code.
" pip install autopep8
" pip install pep8
" pip install pyflakes
" pip install mccabe
" pip install pep257
" pip install pylint

" Turn on code checking
let g:pymode_lint = 1

" Use F8 to run autopep8.
autocmd FileType python map <buffer> <F7> :PymodeLintAuto<CR>
" Use F9 to Open/Close checkers windows.
autocmd FileType python map <buffer> <F8> :PymodeLint<CR>

" Check code on every save, if file has been modified.
let g:pymode_lint_on_write = 1
" Check code on every save, nomatter modified or not.
let g:pymode_lint_unmodified = 1
" Check code when editing
let g:pymode_lint_on_fly = 1
" Show error message if cursor placed at the error line
let g:pymode_message = 1
" Default code checkers
let g:pymode_lint_checkers = ['pylint', 'mccabe']
" Skip errors and warnings that you don't want to see.
" C0111 - pylint for class/function/method docstring.
let g:pymode_lint_ignore = "C0111, D101, D102, D103"
" Select some error and warning that you want to see but ignored.
let g:pymode_lint_select = ""
" Sort errors by relevance
let g:pymode_lint_sort = ['E', 'C']
" Auto open quickfix windows when any errors have been found
let g:pymode_lint_cwindow = 1
" Definitions for sings
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

" Set pep8 options
let g:pymode_lint_options_pep8 =
            \ {'max_line_length': g:pymode_options_max_line_length}

" Set pep257 options
let g:pymode_lint_options_pep257 = {}

" Set pyflakes options
let g:pymode_lint_options_pyflakes = { 'builtins': '_' }

" Set mccabe options
let g:pymode_lint_options_mccabe = { 'complexity': 12 }

" Set pylint options
let g:pymode_lint_options_pylint =
            \ {'max-line-length': g:pymode_options_max_line_length}

"---------rope---------
" Use YCM/jedi and jedi instead of autocomplete goto and pydoc.
" Use rope for refactoring.
" omnifunc=pymode#rope#completions
" pip install rope

" Turn on rope script
let g:pymode_rope = 0

" Enable searching for .ropeproject in parent directories
let g:pymode_rope_lookup_project = 0
" Set rope project directory
let g:pymode_rope_project_root = ''
" Set the rope folder name.
let g:pymode_rope_ropefolder = '.ropeproject'
" Regenerate project cache on every save
let g:pymode_rope_regenerate_on_write = 1

" Functions we use jedi replace rope

" Show pydoc for object under cursor, default <C-c>d
let g:pymode_rope_show_doc_bind = ''

" Enable completion for rope
let g:pymode_rope_completion = 0
" Turn on autocomplation when typing a period
let g:pymode_rope_complete_on_dot = 1
" Keymap for autocomplate, default <C-Space>, Use YCM
let g:pymode_rope_completion_bind = ''
" Extended autocompletion from project
let g:pymode_rope_autoimport = 0
" Load modules to autoimport by default
let g:pymode_rope_autoimport_modules = ['sys']
" Offer to unresolved import object after completion
let g:pymode_rope_autoimport_after_complete = 1

" Jump to definition, default <C-c>g
let g:pymode_rope_goto_definition_bind = ''
" Command for open window when definition has been found
let g:pymode_rope_goto_definition_cmd = 'new'

" Functions wee need to use about refactoring

" Keymap for rename method/function/class/variables
let g:pymode_rope_rename_bind = '<C-c>rr'
" Keymap for rename current module
let g:pymode_rope_rename_module_bind = '<C-c>rm'

" Bind the key
let g:pymode_rope_autoimport_bind = '<C-c>ra'
" Keymap for import
let g:pymode_rope_organize_imports_bind = '<C-c>ri'

" keymap for convert module to package
let g:pymode_rope_module_to_package_bind = '<C-c>rp'

" Keymap for extract method/variable
let g:pymode_rope_extract_method_bind = '<C-c>rv'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'

" Keymap for use function
let g:pymode_rope_use_function_bind = '<C-c>ru'

" Keymap for move method/fields
let g:pymode_rope_move_bind = '<C-c>rf'

" Keymap for change function signature
let g:pymode_rope_change_signature_bind = '<C-c>rs'

""">>> go

""""""""""config vim-go""""""""""

""">>> ruby and rails

""""""""""config vim-ruby""""""""""

""""""""""config vim-rails""""""""""

""">>> coffee-script

""""""""""config vim-coffee-script""""""""""

""">>> Clojure

""""""""""config vim-fireplace""""""""""

""">>> DevOps tools

""""""""""config vimux""""""""""

""""""""""config vim-tmux""""""""""

""""""""""config tmux-focus-events""""""""""

""""""""""config ctrlp""""""""""
" Something like find.
" <leader>p search file in current folder and sub folder.
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
" <leader>f search file in MRU.
map <leader>f :CtrlPMRU<CR>
" <leader>c clear the MRU cache.
map <leader>c :CtrlPClearCache<CR>
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
            \ 'file': '\v\.(exe|dll|zip|so|tar|tar.gz|tgz|pyc|swp)$',
            \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 15
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_max = 500
let g:ctrlp_follow_symlinks = 1

""""""""""""config ack.vim"""""""""""
" ack is better than grep.
" ack2 replaced ack.
" ag is faster than ack/ack2.

let g:ackprg = 'ag --vimgrep'

""""""""""""config fugitive"""""""""""
" Show in status line
set statusline+=%{fugitive#statusline()}

""""""""""""config gitgutter""""""""""
" Disable this plugin set up any mappings
let g:gitgutter_map_keys = 0

""""""""""""config zeal""""""""""
" sudo add-apt-repository ppa:zeal-developers/ppa
" sudo apt-get update
" sudo apt-get install zeal

""""""""""""config covim""""""""""

"""""""""config nerdcommenter"""""""
" Action for commenting.
let g:loaded_nerd_comments = 1

""">>> IDE tools

""""""""""config winmanager""""""""""
" :help netrw - see netrw help file.
" :help winmanager - see the winmanager help file.
" Use F2 to open or close winmanager window.
nnoremap <F2> <ESC> :WMToggle<CR>
let g:winManagerWindowLayout = 'FileExplorer|TagList|BufExplorer'
" Default 25.
let g:winManagerWidth = 20
" If just winmanager opend, close winmanager.
let g:persistentBehaviour = 0 "If just

""""""""""config taglist""""""""""
" :help taglist.txt - see the taglist help file.
" TlistToggle just open or close the taglist.
"nnoremap <silent> <F3> :TlistToggle<CR>
" Make TlistToggle open and jump to it.
let Tlist_GainFocus_On_ToggleOpen = 0
" Default is 30, the same with winmanager
"let Tlist_WinWidth = 30
" Default on the left.
"let Tlist_Use_Right_Window = 0
let Tlist_Auto_Open = 0 "set the taglist open when open vim.
let Tlist_Close_On_Select = 0 "when file or tag selected close taglist.
let Tlist_Exit_OnlyWindow = 1 "when just taglist close the vim.
let Tlist_Use_SingleClick = 1 "to jump to a tag on a single mouse click.
let Tlist_Auto_Highlight_Tag = 1 "hightlight the tag.
let Tlist_Highlight_Tag_On_BufEnter = 1 "hightlight the buffer tag.
let Tlist_Process_File_Always = 1 "update tags when taglist not opened.
let Tlist_Show_One_File = 1 "just show one taglist for a file
let Tlist_File_Fold_Auto_Close = 1 "auto close the folder not used.
let Tlist_Sort_Type = "name" "sort by name or order
let Tlist_Inc_Winwidth = 1 "when tag closed make vi origin.
let Tlist_Compact_Format = 1 "reduce the empty line in the taglist.
let Tlist_Enable_Fold_Column = 1 "display the tag fold col.
let Tlist_Display_Prototype = 0 "show the tag proto not the name.
let Tlist_Display_Tag_Scope = 1 "show the scope.
let Tlist_Auto_Update = 1 "Auto update taglist
let Tlist_Show_Menu = 1 "show the menu in gui vi.
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
set statusline+=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%) "show the tag name in the statu line.
set title titlestring+=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%) "show the tag name in window title bar.

""""""""""config Bufexplorer""""""""""
" Use F4 to open buffer
"nnoremap <silent> <F4> :ToggleBufExplorer<CR>
"nnoremap <silent> <c-F4> :BufExplorerVerticalSplit<CR>
" Don't show default help info
let g:bufExplorerDefaultHelp = 0
" Split vertically
"let g:bufExplorerSplitVertical = 1
" Default is 25, Height is 10
let g:bufExplorerMaxHeight = 10
" Default is 30, the same with winmanager
"let g:bufExplorerSplitVertSize = 30
" Default on the left.
"let g:bufExplorerSplitRight = 0

""""""""""config NERDTree""""""""""
" More good than winnamager-fileexplorer
" Use F3 to open the nerdtree
nnoremap <F3> <ESC> :NERDTreeToggle<CR>
" Default is left.
let g:NERDTreeWinPos = 'right'
" Default 31.
let g:NERDTreeWinSize = 25
" No more help info
let g:NERDTreeMinimalUI = 1
" Show hidden file
let g:NERDTreeShowHidden = 1
" Switch CWD on root change
let g:NERDTreeChDirMode = 2
" If just nerdtree opened, close vim.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""config tagbar""""""""""
" More good than taglist
" Use F4 to open tagbar
nnoremap <F4> <ESC> :TagbarToggle<CR>
" Default on the left
let g:tagbar_left = 0
" Default 40
let g:tagbar_width = 25
" Autofocus on Tagbar open
let g:tagbar_autofocus = 0
" No more help info in the windows
let g:tagbar_compact = 1
" Expand vim
"let g:tagbar_expand = 1

""""""""""config minibufexplorer""""""""""
" :help buffer to see the default buffer manual.
" Use F5 to open and close the buffer.
map <F5> :MBEToggle<CR>
" Default top
let g:miniBufExplBRSplit = 1
" Width to 30
let g:miniBufExplVSplit = 25
"let g:miniBufExplorerMoreThanOne=0
" Ctrl+tab switch to next buffer and open it.
" Ctrl+shift+tab switch to front buffer and open it.
let g:miniBufExp1MapCTabSwitchBufs = 1
let g:miniBufExp1MapWindowNavVim = 1 "use ctrl+h/j/k/l
let g:miniBufExp1MapWindowNavArrows = 1 "use ctrl+arrows
let g:miniBufExp1ModSelTarget = 1

""""""""""config omnifunc""""""""""
" Just use YCM to complete everything.
" omnifunc just in /usr/share/vim/vim74/autoload
" Use <C-x><C-o> for omnifunc
" Use <C-x><C-u> for completefunc

" For perl
" Use perlomni.vim
"setlocal omnifunc=PerlComplete

" For ruby and rails
" omnifunc=rubycomplete#Complete

" When completeopt set to preview close preview windows after complete:
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"""""""""config syntastic"""""""""""""
" Syntastic checking.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set the symbol
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = 'S⚠'
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = 'S✗'

" Show errors in location-list.
let g:syntastic_always_populate_loc_list = 1
" Auto close and open the location-list.
let g:syntastic_auto_loc_list = 1
" For python, show errors in quickfix not local list.
autocmd FileType python let b:syntastic_auto_loc_list = 0
" Specify the hight of the location lists, default=10
let g:syntastic_auto_loc_list_height = 5
" When open file check syntax, default 0
let g:syntastic_check_on_open = 1
" Check syntax when write.
let g:syntastic_check_on_wq = 1
" Specify the shell
let g:syntastic_shell = '/bin/bash'
" Add new filetype
let g:syntastic_extra_filetypes = [ 'make', 'gitcommit', 'nagios' ]
" Active perl checker
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']

" Ignore files you don't want to check.
let g:syntastic_ignore_files = []
" Set active mode and passitive mode.
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ['python'] }
" Set non-standard filetypes to standard one
let g:syntastic_filetype_map = {}
" Set quiet messages
let g:syntastic_quiet_messages = {}

""""""""""config vim-surround"""""""""""
" Surrounding parentheses, brackets, quotes, XML tags, and more Action.

""""""""""config vim-unimpaired"""""""""""
" Pairs of handy bracket mappings

""""""""""config delimitmate"""""""""""
" Provides insert mode auto-completion for quotes, parens, brackets, etc

"""""""""config vim-indent-guides"""""""""
" Start this plugin when open vim
" The same plugin is 'indentline'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Set your own color
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

""">>> Plugins build with python

""""""""""config YouCompleteMe""""""""""
" How to install with git:
" cd YouCompleteMe
" git submodule update --init --recursive
" ./install.py --clang-completer --tern-completer

" Include clang for c/c++/oc/oc++
" Include jedi for python
" Include tern for javascript
" Include supertab clang_complete autocomplpop neocomplete 's functions.

" Debug info, run :YcmToggleLogs stderr and :YcmDebufInfo
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

" For c/cpp/oc/ocpp use this file to work.
if !empty(glob('~/.vim/plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'))
    let g:ycm_global_ycm_extra_conf = '~/.vim/plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
endif

" YCM can trigged completion menu automatically after typing ./->/:: ...
let g:ycm_auto_trigger = 1
" You can also use <C-Space> to popup completion menu.
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <leader>ya :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>yb :YcmCompleter GoToDefinition<CR>
nnoremap <leader>yc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_indentifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
" Set the goto action in [ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab', 'new-or-existing-tab' ]
let g:ycm_goto_buffer_command = 'same-buffer'
" Default <leader>d
let g:ycm_key_detailed_diagnostics = '<leader>ye'

" For omnifunc
let g:ycm_cache_omnifunc = 1

" For syntastic
let g:ycm_show_diagnostics_ui = 0

" For ultisnips
let g:ycm_use_ultisnips_completer = 1

""""""""""config ultisnips"""""""""""""
" Auto complete snippets.
" The same plugin is vim-snipmate.

" Define the directory private snippet definition files are stored in.
let g:UltiSnipsSnippetsDir='~/.vim/plugins'
" Defines the directories for looking for snippets.
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" Split the windows
let g:UltiSnipsEditSplit = "vertical"
" Fix the <tab> confix with YCM
let g:UltiSnipsExpandTrigger = '<leader><tab>'
let g:UltisnipsJumpForwardTrigger = '<leader><c-tab>'
let g:UltisnipsJumpBackwardTrigger = '<leader><s-tab>'

""""""""""config snippets"""""""""""""
" Snippets files.
" Need ultisnips or vim-snipmate to call this files.

""">>> Other tools

"""""""""config vim-sensible"""""""
" Some basic configurations everyone agree.

"""""""""config vim-startify"""""""

"""""""""config vim-dispatch"""""""

""""""""""config vim-multiple-cursors""""""""""

""""""""""config vim-devicons""""""""""
" Need https://github.com/ryanoasis/nerd-fonts

""""""""""config gundo.vim""""""""""
nnoremap <F6> <ESC> :GundoToggle<CR>
let g:gundo_width = 30
let g:gundo_preview_height = 30
let g:gundo_right = 1

""""""""""config vim-calendar.vim""""""""""
nnoremap <F10> <ESC> :Calendar -view=year -split=vertical -position=right -width=30<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

""""""""""config easymotion""""""""""
let g:EasyMotion_smartcase = 1

""""""""""config tabular""""""""""""""""""""
" Text filtering and alignment.
" The same plugin is 'vim-easy-align'

""""""""""config rainbow_parentheses""""""""""
" Highlight the parentheses.
" The same plugin is 'rainbow'

""""""""""config better-whitespace""""""""""
" Highlight the trailing whitespace in red and clean it by hand.
" The same plugin is 'vim-trailing-whitespace'.

" Auto strip whitespace.
autocmd BufWritePre * StripWhitespace

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
