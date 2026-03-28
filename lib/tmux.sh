##############################################################################
# @file tmux.sh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

command -v tmux >/dev/null 2>&1 && {
    case $- in
        *i*)
            if [ -z "$TMUX" ]; then
                # Only auto start/attach when using zsh or bash
                # The logic uses bash/zsh specific features
                case "$0" in
                    *bash|*zsh)
                        _tmux_prompt() {
                            # auto start delay seconds
                            local i=2
                            echo -n "Attaching tmux in ${i}s... (press any key to cancel) "
                            while [ $i -gt 0 ]; do
                                if read -r -s -n1 -t1 _key; then
                                    echo "cancelled."
                                    return 1
                                fi
                                i=$((i - 1))
                                echo -ne "\rAttaching tmux in ${i}s... (press any key to cancel) "
                            done
                            echo ""
                            return 0
                        }

                        if tmux has-session &>/dev/null; then
                            _tmux_prompt && exec tmux attach
                        else
                            _tmux_prompt && exec tmux -2
                        fi
                        unset -f _tmux_prompt
                    ;;
                esac
            fi
        ;;
        *)
            return
        ;;
    esac
}

##############################################################################
