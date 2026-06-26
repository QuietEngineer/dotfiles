if which nvim &>/dev/null; then
    export EDIT=${EDIT:-nvim}
    alias vim=nvim
elif which vim &>/dev/null; then
    export EDIT=${EDIT:-vim}
elif which vi &>/dev/null; then
    export EDIT=${EDIT:-vi}
    alias vim=vi
else
    [[ -n "$EDIT" ]] && export EDIT
    alias nvim="echo could not find Neovim on this system"
    alias vim="echo could not find Vim or vi on this system"
    alias vi="echo could not find Vim or vi on this system"
fi

export EDITOR=$EDIT
