
" Copyright (C) 2006 Arthur Furlan <afurlan@mecasar.com>
" 
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
" 
" On Debian systems, you can find the full text of the license in
" /usr/share/common-licenses/GPL-2


set nu                      " show lines number
set ruler                   " show cursor position
set title                   " show filename on titlebar
set fdm=marker              " enable folding
set nobackup                " disable backup files
set cot=menu                " autocomplete config
set bg=light                " light/dark background
set vb t_vb=			    " disable the errorbells
set et ts=4	sw=4 st=4 sts=4 " tab with 4 blank spaces

set sm                      " show matching brackets
set ai si      			    " set the auto-indent
set is ic                   " set the search behaviour
syntax on                   " enable syntax color

" enable plugins
filetype plugin on

" ultimate vim-python setup -- https://dev.launchpad.net/UltimateVimPythonSetup 
if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
endif
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" python-mode -- https://github.com/klen/python-mode
let g:pymode_folding = 0
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

" useful aliases for mistyped commands
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x
