##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Minimal ellipsis version
ELLIPSIS_VERSION_DEP='1.9.0'

# Package dependencies (informational/not used!)
ELLIPSIS_PKG_DEPS=''

##############################################################################

pkg.install() {
    : # No action
}

##############################################################################

pkg.link() {
    # Link profile file
    fs.link_file profile

    # Link into ~/.config/shell
    mkdir -p "$ELLIPSIS_HOME/.config"
    fs.link_rfile "$PKG_PATH" "$ELLIPSIS_HOME/.config/shell"
}

##############################################################################

pkg.unlink() {
    # Remove link in ~/.config
    rm -f "$ELLIPSIS_HOME/.config/shell"

    # Remove links in the home folder
    hooks.unlink
}

##############################################################################

pkg.uninstall() {
    : # No action
}

##############################################################################

