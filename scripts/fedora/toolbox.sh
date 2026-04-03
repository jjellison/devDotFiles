#! /bin/bash

# Install things specific to dev containers
./common.sh

ln -sf ~/.devDotFiles/scripts/devbox ~/.local/bin

dnf copr enable wezfurlong/wezterm-nightly


# webkit and librsvg2 are for svelte development
dnf install -y wezterm neovim webkit2gtk4.1-devel librsvg2-devel rustup


