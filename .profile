
# Copyright (C) 2006 Arthur Furlan <afurlan@afurlan.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# On Debian systems, you can find the full text of the license in
# /usr/share/common-licenses/GPL-2

export TERM=linux

## common configuration
export HISTCONTROL=ignoreboth   # force ignoredups and ignorespace
shopt -s histappend             # append to the history file, don't overwrite it
shopt -s checkwinsize           # update the values of LINES and COLUMNS if necessary

## colorized output
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## macbook specific
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

## bash configration
if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && source /etc/bashrc
fi

## alias definitions
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

## python virtualenv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

## ruby rvm
if [ -f /Users/afurlan/.rvm/scripts/rvm ]; then
    source /Users/afurlan/.rvm/scripts/rvm
fi

# add rvm to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
