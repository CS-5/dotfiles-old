if status is-interactive
    # Setup Starfish
    starship init fish | source
end

##### Setup Plugins #####

fundle plugin joseluisq/gitnow
fundle plugin jorgebucaran/nvm.fish
fundle plugin jethrokuan/z
fundle plugin gazorby/fish-abbreviation-tips
fundle plugin sharkdp/bat

fundle init

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
