##############################################################################
# @file functions.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Generate password
gen_pass() {
    strings /dev/urandom | tr -d $'\n\t' | head -c${1:-24};echo
}

##############################################################################

