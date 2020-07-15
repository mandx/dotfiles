# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '
alias ll='exa -alF --group-directories-first '
alias ...='cd ../..'
alias ....='cd ../../..'

# Globals
set -x VISUAL 'subl --wait '
set -x LESS '--ignore-case --raw-control-chars '
set -x BROWSER 'firefox '  # TODO: Make sure this is only used on Linux
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# Needed for pipx
set -gx PATH $PATH $HOME/.local/bin

# Initialize `pipenv` if it's available
if command -sq pipenv
    pyenv init - | source
end
