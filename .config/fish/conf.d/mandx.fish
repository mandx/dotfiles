# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias ll='ls --color -alF '
alias psgrep='ps -ef | grep -i '

alias gitg='env GTK_THEME=Arc-Darker gitg'
alias meld='env GTK_THEME=Arc-Darker meld'

# Globals
set -x VISUAL 'subl --wait '
set -x LESS '--ignore-case --raw-control-chars '
set -x BROWSER 'firefox '
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# Theme (bobthefish) options
set -U theme_avoid_ambiguous_glyphs yes
set -U default_user mandx
set -U theme_display_git yes
set -U theme_display_hg no
set -U theme_display_ruby no
set -U theme_display_user no
set -U theme_display_virtualenv yes
set -U theme_display_cmd_duration yes
set -U theme_display_k8s_context no
set -U theme_display_git_master_branch yes

# fzf options
set -U FZF_LEGACY_KEYBINDINGS 1

