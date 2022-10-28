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
# History

export HISTSIZE=10000
export HISTCONTROL='ignorespace:erasedups'
export HISTTIMEFORMAT="%F %T "

##############################################################################
# PATH

append_path "$HOME/bin"                         # Users bin folder
append_path "$HOME/.bin"                        # Users bin folder
append_path "$HOME/.local/bin"                  # Users bin folder
append_path "$HOME/.config/composer/vendor/bin" # Composer bin
append_path "$HOME/.ellipsis/bin"               # Ellipsis bin folder

##############################################################################
# GO

export GOPATH="$HOME/go"
append_path "/usr/local/go/bin"

##############################################################################
