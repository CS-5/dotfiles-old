# .dotfiles

A collection of my personal dotfiles. Really, these are likely no use to anyone
else, but I thought I'd leave this repo public just in case anyone was curious.
I am still new to vim, tmux, and fish.. so lots of what is here could probably
be far more functional.

## Dependencies

1. Fish (https://fishshell.com/)
2. Starship (https://starship.rs/)
3. Jump (https://github.com/gsamokovarov/jump)
4. LSD (https://github.com/Peltoche/lsd)
5. Bat (https://github.com/sharkdp/bat)
6. fnm (https://github.com/Schniz/fnm)
7. Git (https://git-scm.com/)
8. Stow (https://www.gnu.org/software/stow/)
9. Neovim (https://neovim.io/)
10. fd (https://github.com/sharkdp/fd)
11. fzf (https://github.com/junegunn/fzf)
12. ...I think that's it? Everything else should be plugins that get installed with `fundle install`

## Usage

This repository is structured to work with [GNU Stow](https://www.gnu.org/software/stow/), usage is simple.

1. Clone the repo: `git clone https://github.com/CS-5/.dotfiles ~/.dotfiles`
2. Enter the directory, decide what files you want to use: `cd ~/.dotfiles`
3. Use the `stow` command for the appropriate files: `stow fish`, `stow git`
4. _(Optional) Give me some nvim and tmux pointers, I need to set up configs for those next !_
