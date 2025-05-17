# Source global definitions
[[ -r /etc/zsh/zprofile ]] && source /etc/zsh/zprofile

# Source modularized dotfiles
for F in ~/.zsh/[0-9][0-9]-*.zsh(N); do
    source $F
done
unset F

# Load custom stuff from a host-specific zshrc (if marked executable)
[[ -x ~/.$HOSTNAME.zshrc ]] && source ~/.$HOSTNAME.zshrc
