##############################################################################
# @file helpers.sh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# PATH helper, if exists, prepend, no duplication
prepend_path() {
    duplicates="$(echo "$PATH" | grep -Ec "(^|:)$1(:|$)")"
    if [ -d "$1" ] && [ "$duplicates" -eq 0 ]; then
        export PATH="$1:$PATH"
    fi
}

##############################################################################

# PATH helper, if exists, append, no duplication
append_path() {
    duplicates="$(echo "$PATH" | grep -Ec "(^|:)$1(:|$)")"
    if [ -d "$1" ] && [ "$duplicates" -eq 0 ]; then
        export PATH="$PATH:$1"
    fi
}

##############################################################################
