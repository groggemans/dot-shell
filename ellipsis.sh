#!/usr/bin/env bash
##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Install package
pkg.install() {
    # Make sure '.config' is present
    mkdir -p "$HOME/.config"
}

##############################################################################

# Link package
pkg.link() {
    # Link into ~/.config/shell
    fs.link_rfile "$PKG_PATH" "$HOME/.config/shell"
}

##############################################################################

# Unlink package
pkg.unlink() {
    # Remove from ~/.config
    rm -f "$HOME/.config/shell"
}

##############################################################################

