#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc

# Source my modularized dotfiles
for F in ~/.bash/[0-9][0-9]-*.sh; do
    [[ -x $F ]] && source $F
done

# run site-specific stuff in .site-bashrc
[[ -r $HOME/.${HOSTNAME}-bashrc ]] && source $HOME/.${HOSTNAME}-bashrc
