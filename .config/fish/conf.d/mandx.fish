# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD "cat"
set -x fish_cursor_selection_mode inclusive

set -gx VISUAL 'hx '
set -gx LESS '--ignore-case --raw-control-chars '
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

set -gx GOBIN $HOME/.local/go/bin/
set -gx PATH $PATH $HOME/.local/bin
set -gx JUST_CHOOSER sk

# Aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '
alias ll='eza --all --long --classify --header --hyperlink --group-directories-first '
alias ...='cd ../..'
alias ....='cd ../../..'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'


switch (uname)
  case 'Linux'
    set -x BROWSER 'firefox '
end

# Initialize `pipenv` if it's available
if command -sq pipenv
    pyenv init - | source
end

if command -sq direnv
    direnv hook fish | source
end

