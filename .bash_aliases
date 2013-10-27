
# Copyright (C) 2006 Arthur Furlan <afurlan@afurlan.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# On Debian systems, you can find the full text of the license in
# /usr/share/common-licenses/GPL-2


## enable color support
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='gls --color=auto --group-directories-first'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
fi

## the lack of these aliases make me sick
alias ls='gls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -ACF'

## some usefull aliases
alias top='top -F -R -o cpu'
alias finder="open -a 'Finder'"

## what is best editor in the world?
export EDITOR=emacs # ok, just kidding
export EDITOR=vim   # vim! vim! vim! ... 
export VISUAL=EDITOR

## debian specific configuration
export EMAIL='afurlan@afurlan.org'
export DEBEMAIL="Arthur Furlan <${EMAIL}>"

## add the user binary directory to the PATH
if [ -d "${HOME}/bin" ];then
    export PATH="${HOME}/bin:${PATH}"
fi
