### OLD THEME CONFIG ###
# Setup Theme
# set -g theme_powerline_fonts yes
# set -g theme_nerd_fonts yes
# set -g theme_color_scheme solarized-dark

# set -g theme_title_display_user yes
# set -g theme_title_display_path yes

# set -g theme_display_nvm yes
# set -g theme_display_user yes
# set -g theme_display_sudo_user yes
# set -g theme_show_exit_status yes
# set -g theme_newline_cursor yes

# set -g theme_use_abbreviated_branch_name no


### NEW THEME CONFIG ###

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Manpage Config
set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1

# Setup Enviorment

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

# Init Jump
status --is-interactive; and source (jump shell fish | psub)

# Init Starfish
starship init fish | source
