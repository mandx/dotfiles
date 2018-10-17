# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Cache the platform name
set -l __uname (uname)

switch $__uname
case Linux
    set -g __ls__color_flag '--color'
case Darwin FreeBSD NetBSD DragonFly
    set -g __ls__color_flag '-G'
case '*'
    set -g __ls__color_flag ''
end

# Aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '

# Can't make this variable expansion to work in an alias definition...
# alias ll='ls $__ls__color_flag -alF '
# So let's use a function for now
function ll
    ls $__ls__color_flag -alF $argv
end

# This is just a workaround for a visual glitch in Linux
if [ $__uname != "Linux" ] 
    alias gitg='env GTK_THEME=Arc-Darker gitg'
    alias meld='env GTK_THEME=Arc-Darker meld'
end

# Globals
set -x VISUAL 'subl --wait '
set -x LESS '--ignore-case --raw-control-chars '
set -x BROWSER 'firefox '  # TODO: Make sure this is only used on Linux
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

