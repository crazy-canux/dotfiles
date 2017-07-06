"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Canux's vim
" canuxcheng@gmail.com
" https://github.com/crazy-canux/pydevops
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Header                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.h set filetype=h

autocmd BufNewFile *.c,*.h,*.java,*.py,*.sh exec ":call MySetTitle()"
function! MySetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/env bash")
        call append(line("."),    "\######################################################################")
        call append(line(".")+1,  "\# Copyright (C) 2017 Canux CHENG.                                    #")
        call append(line(".")+2,  "\# All rights reserved                                                #")
        call append(line(".")+3,  "\# File: ".expand("%"))
        call append(line(".")+4,  "\# Author: Canux CHENG canuxcheng@gmail.com                           #")
        call append(line(".")+5,  "\# Version: V1.0.0.0                                                  #")
        call append(line(".")+6,  "\# Date: ".strftime("%c"))
        call append(line(".")+7,  "\######################################################################")
        call append(line(".")+8,  "\# DESCRIPTION:")
        call append(line(".")+9,  "\######################################################################")
        call append(line(".")+10, "")
    endif
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(line("."),    "\# -*- coding: utf-8 -*-")
        call append(line(".")+1,  "\"\"\"")
        call append(line(".")+2,  "SUMMARY ".expand("%"))
        call append(line(".")+3,  "")
        call append(line(".")+4,  "\Copyright (C) 2017 Canux CHENG.")
        call append(line(".")+5,  "\All rights reserved.")
        call append(line(".")+6,  "")
        call append(line(".")+7,  "\LICENSE GNU General Public License v3.0.")
        call append(line(".")+8,  "")
        call append(line(".")+9,  "\:author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+10,  "\:version: 1.0.0")
        call append(line(".")+11,  "\:since: ".strftime("%c"))
        call append(line(".")+12,  "")
        call append(line(".")+13,  "\DESCRIPTION:")
        call append(line(".")+14, "\"\"\"")
        call append(line(".")+15, "import sys")
    endif
    if &filetype == 'java'
        call setline(1,          "/*")
        call append(line("."),   " * Copyright (C) 2017 Canux CHENG.")"
        call append(line(".")+1, " * All right reserved.")
        call append(line(".")+2, " * File: ".expand("%"))
        call append(line(".")+3, " */")
        call append(line(".")+4, "")
        call append(line(".")+5, "package")
        call append(line(".")+6, "")
        call append(line(".")+7, "import")
        call append(line(".")+8, "")
        call append(line(".")+9, "/**")
        call append(line(".")+10, " * SUMMARY")
        call append(line(".")+11, " * @author Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+12, " * @version V1.0.0.0")
        call append(line(".")+13, " * @since ".strftime("%c"))
        call append(line(".")+14, " */")
        call append(line(".")+15, "public class")
    endif
    if &filetype == 'c'
        call setline(1, "/*")
        call append(line("."),   " * Copyright (C) 2017 Canux CHENG.")
        call append(line(".")+1, " * All right reserved.")
        call append(line(".")+2, " * File: ".expand("%"))
        call append(line(".")+3, " * Author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+4, " * Version: V1.0.0.0")
        call append(line(".")+5, " * Date: ".strftime("%c"))
        call append(line(".")+6, " *")
        call append(line(".")+7, " * DESCRIPTION:")
        call append(line(".")+8, " */")
        call append(line(".")+9, "")
    endif
    if &filetype == 'h'
        call setline(1, "/*")
        call append(line("."),   " * Copyright (C) 2017 Canux CHENG.")
        call append(line(".")+1, " * All right reserved.")
        call append(line(".")+2, " * File: ".expand("%"))
        call append(line(".")+3, " * Author: Canux CHENG canuxcheng@gmail.com")
        call append(line(".")+4, " * Version: V1.0.0.0")
        call append(line(".")+5, " * Date: ".strftime("%c"))
        call append(line(".")+6, " *")
        call append(line(".")+7, " * DESCRIPTION:")
        call append(line(".")+8, " */")
        call append(line(".")+9, "")
    endif
    autocmd BufNewFile * normal G
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
