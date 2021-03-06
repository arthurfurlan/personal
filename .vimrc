
" Copyright (C) 2006 Arthur Furlan <afurlan@afurlan.org>
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
set vb t_vb=			          " disable the errorbells
set et ts=2	sw=2 st=2 sts=2 " tab with 2 blank spaces
set sm                      " show matching brackets
set ai si      			        " set the auto-indent
set is ic                   " set the search behaviour
syntax on                   " enable syntax color

" enable plugins
"filetype plugin on
"execute pathogen#infect()

" execute 'Flake8()' everytime you save a python file
"autocmd BufWritePost *.py call Flake8()

" python pep8 standard
autocmd BufRead,BufNewFile *.py set et ts=4 sw=4 st=4 sts=4

" python smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" highlight end of line whitespace -- commented out because it make me sick
" when working with people who don't give a shit about it.
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/

" useful aliases for mistyped commands
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x
