
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

" useful aliases for mistyped commands
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x
