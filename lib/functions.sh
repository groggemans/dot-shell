##############################################################################
# @file functions.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Generate password
create_password() {
    strings /dev/urandom | tr -dc _A-Z-a-z-0-9 | head -c"${1:-64}";echo
}

create_password_symbols() {
    strings /dev/urandom | tr -d $'\n\t' | head -c"${1:-64}";echo
}

##############################################################################
# Google search (chrome required)

google() {
    if ! command -v google-chrome >/dev/null 2>&1; then
        echo "This function needs google-chrome"
        return 1
    fi

    google-chrome --new-window "https://www.google.com/search?q=$*" >/dev/null 2>&1 || \
        echo "Could not google '$*'" &
}

##############################################################################

