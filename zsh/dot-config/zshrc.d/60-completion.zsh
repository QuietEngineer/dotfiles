# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Instead of using `source` on every startup, permanently install with below commands.
# User dir may be swapped for system dir `/usr/local/share/zsh/site-functions/` to make
# completions available to all users.
#
# Add completion functions to user dir for each command.
# This is only needed once or whenever an update is needed.
# Do not put this in startup script.
#
# ```
# [[ $commands[jj] ]] && COMPLETE=zsh jj > ~/.local/share/zsh/site-functions/_jj
# ```
#
# Add user dir to `fpath` so completion functions are loaded automatically on startup.
# Must run before `compinit` and the section added by compinstall.
#
# fpath=(
#     ~/.local/share/zsh/site-functions/
#     $fpath
# )

[[ $commands[atuin] ]] && source <(atuin gen-completions --shell zsh)
[[ $commands[jj] ]] && source <(COMPLETE=zsh jj)
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
