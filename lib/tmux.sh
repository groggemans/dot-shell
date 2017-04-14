##############################################################################
# @file tmux.sh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Check if Tmux is available
command -v tmux >/dev/null 2>&1 && {
    # If not running interactively, do nothing
    case $- in
        *i*)
            # Run Tmux if not already running
            if [ -z "$TMUX" ]; then
                echo "Press enter to start tmux..."
                read choice

                if [ "$choice" = 'n' ]; then
                    return
                else
                    # Use 256 colors by default
                    exec tmux -2
                    # Do not perform useless loading
                    exit $?
                fi
            fi
        ;;
        *)
            return;
        ;;
    esac
}

##############################################################################
