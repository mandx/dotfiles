# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '

# Misc
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

