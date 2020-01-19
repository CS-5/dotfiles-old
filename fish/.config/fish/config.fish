# Setup Theme
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized-dark

set -g theme_title_display_user yes
set -g theme_title_display_path yes

set -g theme_display_nvm yes
set -g theme_display_user yes
set -g theme_display_sudo_user yes
set -g theme_show_exit_status yes
set -g theme_newline_cursor yes

set -g theme_use_abbreviated_branch_name no


# Setup Enviorment

## Misc
set -x ENHANCD_FILTER fzy

## Go
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/programming/go

## Path
set -x PATH $GOPATH/bin:$GOROOT/bin:/snap/bin:$PATH

# Aliases
alias g='git'
alias v='vim'
alias reload='omf reload'
alias python='python3'
