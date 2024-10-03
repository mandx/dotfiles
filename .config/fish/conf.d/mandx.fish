# Prevent fish from altering the X clipboard
set FISH_CLIPBOARD_CMD cat
set -x fish_cursor_selection_mode inclusive

set -gx VISUAL 'hx '
set -gx LESS '--ignore-case --raw-control-chars '
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

set -gx GOBIN $HOME/.local/go/bin/
fish_add_path $HOME/.local/bin
set -gx JUST_CHOOSER sk

# Aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME '
alias grep='grep --color=auto '
alias psgrep='ps -ef | grep -i '
alias ll='eza --all --long --classify --header --hyperlink --group-directories-first '
alias ...='cd ../..'
alias ....='cd ../../..'

if command -sq xsel; and not command -sq wl-copy
    alias pbcopy='xsel --clipboard --input'
end
if command -sq xsel; and not command -sq wl-paste
    alias pbpaste='xsel --clipboard --output'
end
if command -sq wl-copy; and not command -sq xsel
    alias pbcopy='wl-copy'
end
if command -sq wl-paste; and not command -sq xsel
    alias pbpaste='wl-paste'
end

alias dedupe-stable="awk '!x[\$0]++'"
alias sort-unique='sort -u'
alias sort-uniq='sort -u'
alias b64d='base64 --decode -'
alias b64e='base64 --wrap=0 -'

alias nvim='hx'
alias vim='hx'
alias vi='hx'

switch (uname)
    case Linux
        set -x BROWSER 'firefox '
end

# Initialize `pipenv` if it's available
if command -sq pipenv
    pyenv init - | source
end

if command -sq direnv
    direnv hook fish | source
end

if not command -sq fzf; and command -sq sk
    alias fzf='sk'
end
