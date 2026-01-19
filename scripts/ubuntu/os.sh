#! /bin/bash



# Add the WezTerm repo to apt
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg

sudo add-apt-repository ppa:neovim-ppa/unstable

# Rustup needs clang to build some packages for `tree-sitter-cli`
sudo apt update
sudo apt-get install -y rustup clang wezterm-nightly neovim


cargo install --locked tree-sitter-cli


