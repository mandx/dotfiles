execute pathogen#infect()

" Display line number
set nu

" Show incremental search results as you type
set incsearch

" Highlight all search results
set hlsearch

" Disable case-sensitivity in searches,
" however if a pattern contains an uppercase letter,
" it is case sensitive, otherwise, it is not.
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

syntax enable

