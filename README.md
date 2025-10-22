# Instructions
This is meant to be used as an anchor point for all the files in this repo. You should symlink everything to this repo so that there are not mulitple copies floating around.

Before you do anything, clone this repo into `~/.devDotFiles`

### Neovim installation
For Neovim specific docs, click [here](docs/nvim/README.md)

1. Try running the `install-nvim-ubuntu.sh`. It probably wont work.
1. Go to [this page](https://github.com/neovim/neovim/releases) and download the tarball you want for neovim.
1. Run `mkdir -p ~/.config/nvim`
1. Sym link the custom nvim config in this repo to the custom dir in `~/.config/nvim`
`ln -s ~/.devDotFiles/nvimConfig ~/.config/nvim`

### Tmux Setup
1. Install tmux on your system (package manager, or from source)
1. Symlink your tmux config `ln -s ~/.devDotFiles/.tmux.conf ~/.tmux.conf`
1. Download the Tmux plugin manager (tpm) `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

### Install OhMyZsh
1. Install a nerd font from [here](https://www.nerdfonts.com/font-downloads) (I typically choose agave).
    1. Put them in /usr/share/fonts/truetype/\<fontname>
    1. Run `fc-cache -f -v`
    1. Change the terminal font to use your new downloaded font
1. Set your terminal to the proper color layout
    1. Ubuntu: `curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.3.0/install.py | python3 -`
    1. Mac: Import the profile inside this repo.
    1. Verify that this new profile is the default.
1. Follow [Josean Martinez's](https://www.josean.com/posts/terminal-setup) blog to install 
1. Symlink your .zshrc config `ln -s ~/.devDotFiles/.zshrc ~/.zshrc`




### GitUI
1. Install GitUi from the cli
1. symlink your desired file from within `gitui-config` to `~/.config/gitui/theme`
``` bash
ln -s ~/location_of_this_repo/gitui-config/catppuccin-frappe.ron ~/.config/gitui/theme.ron
```
1. Symlink the keybindings for vim
``` bash
ln -s ~/location_of_this_repo/gitui-config/key_bindings.ron ~/.config/gitui/theme.ron
```
