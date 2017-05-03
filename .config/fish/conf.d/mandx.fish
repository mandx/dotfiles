# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Aliases
alias grep='grep --color=auto '
alias ll='ls -alF'
alias psgrep='ps -ef | grep -i '
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Misc
set -x VISUAL 'subl --wait'
set -x LESS '--ignore-case --raw-control-chars'
set -x BROWSER 'firefox'
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

set -g default_user mandx
set -g theme_display_git yes
set -g theme_display_hg no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_virtualenv yes
