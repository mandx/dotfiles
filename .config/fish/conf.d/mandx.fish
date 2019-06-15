# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"

# Aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '

# Cache the platform name
set -l __uname (uname)

# Determine which style of color flag to use for `ls`
switch $__uname
case Linux
    set -g __ls__color_flag '--color'
case Darwin FreeBSD NetBSD DragonFly
    set -g __ls__color_flag '-G'
case '*'
    set -g __ls__color_flag ''
end

# Can't make this variable expansion to work in an alias definition...
# alias ll='ls $__ls__color_flag -alF '
# So let's use a function for now
function ll
    ls $__ls__color_flag -alF $argv
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

# Needed for pipx
set -gx PATH $PATH $HOME/.local/bin

