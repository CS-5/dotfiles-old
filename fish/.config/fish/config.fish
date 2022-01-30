
##### Aliases #####
source ~/.config/fish/alias.fish

##### Init Jump and Starfish #####
if status is-interactive
    source (jump shell fish | psub)	

    starship init fish | source
end

##### Syntax Highlighting #####
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

##### Setup Plugins #####

fundle plugin joseluisq/gitnow
fundle plugin FabioAntunes/fish-nvm
fundle plugin edc/bass

fundle init

##### Setup Enviorment #####

# Go
set GOROOT /usr/local/go
set GOPATH $HOME/dev/go
fish_add_path $GOROOT/bin

# Rust
set CARGOPATH $HOME/.cargo
