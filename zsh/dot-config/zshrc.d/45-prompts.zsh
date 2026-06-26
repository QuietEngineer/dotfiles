autoload -Uz vcs_info
precmd() {
    vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{blue}%n%f@%F{blue}%m%f %B%2~%b %F{blue}${vcs_info_msg_0_}%f%# '
