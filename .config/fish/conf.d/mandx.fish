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

if not command -sq pbcopy
    function pbcopy
        if command -sq xsel; and not command -sq wl-copy
            xsel --clipboard --input
        end
        if command -sq wl-copy; and not command -sq xsel
            wl-copy --trim-newline 2>/dev/null
        end
    end
end

if not command -sq pbpaste
    function pbpaste
        if command -sq xsel; and not command -sq wl-paste
            xsel --clipboard --output
        end
        if command -sq wl-paste; and not command -sq xsel
            wl-paste --no-newline
        end
    end
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

abbr --add fixup-lf-crlf "mv package-lock.json __package-lock.json; and perl -p -e 's/\n/\r\n/' < __package-lock.json > package-lock.json; and rm __package-lock.json"

# Remap `prevd-or-backward-word` and `nextd-or-forward-word` because
# `alt-left`/`alt-right` are used by ZelliJ/Wezterm
bind alt-shift-left prevd-or-backward-word
bind alt-shift-right nextd-or-forward-word
