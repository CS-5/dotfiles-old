if status is-interactive
    # Setup Starfish
    starship init fish | source
end

##### Setup Plugins #####

fundle plugin joseluisq/gitnow
fundle plugin FabioAntunes/fish-nvm
fundle plugin edc/bass

fundle init

##### Aliases #####
alias cat=batcat
alias g=git

##### Setup Enviorment #####

fish_add_path $HOME/.local/bin

# Go
set GOROOT /usr/local/go
set GOPATH $HOME/programming/go

# Rust
set CARGOPATH $HOME/.cargo

##### Misc #####

# Clear Greeting
set fish_greeting
