# Instructions
This is meant to be used as an anchor point for all the files in this repo. You should symlink everything to this repo so that there are not mulitple copies floating around.

### Symlink your neovim config

1. Clone the [NvChad](https://github.com/NvChad/NvChad) configuration into `~/.config/nvim` 
1. Clone this repo into `~/.devDotFiles`
1. Sym link the custom nvim config in this repo to the custom dir in `~/.config/nvim/lua/custom`
`ln -s ~/.devDotFiles/nvimConfig ~/.config/nvim/lua/custom`

### Symlink your tmux config
1. `ln -s ~/.devDotFiles/.tmux.conf ~/.tmux.conf`

### Install OhMyZsh

1. Follow [Josean Martinez's](https://www.josean.com/posts/terminal-setup) blog to install 
1. Symlink your .zshrc config `ln -s ~/.devDotFiles/.zshrc ~/.zshrc`
