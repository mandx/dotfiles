set -gx PATH $PATH $HOME/.cargo/bin

alias cargo='env TMPDIR=$XDG_RUNTIME_DIR cargo '

eval (starship init fish)

