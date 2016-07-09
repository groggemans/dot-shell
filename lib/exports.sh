##############################################################################
# @file exports.sh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################
# General

export PAGER='less'         # Pager
export EDITOR='vim'         # Editor
export VISUAL='vim'         # Visual editor

##############################################################################
# Locale

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

##############################################################################
# PATH

append_path "$HOME/bin"                 # Users bin folder
append_path "$HOME/.bin"                # Users bin folder

##############################################################################
# Ellipsis

if [ -f "$HOME/.ellipsis/init.sh" ]; then
    source "$HOME/.ellipsis/init.sh"
fi

##############################################################################