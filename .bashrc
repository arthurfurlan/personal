
# Copyright (C) 2006 Arthur Furlan <afurlan@afurlan.org>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# On Debian systems, you can find the full text of the license in
# /usr/share/common-licenses/GPL-2


[ -z "$PS1" ] && return         # if not running interactively, don't do anything

export HISTCONTROL=ignoreboth   # force ignoredups and ignorespace
shopt -s histappend             # append to the history file, don't overwrite it
shopt -s checkwinsize           # update the values of LINES and COLUMNS if necessary

# make less more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# enable programmable completion
[ -f /etc/bash_completion ] && . /etc/bash_completion
