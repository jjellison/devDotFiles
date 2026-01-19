#! /bin/bash

# Rustup needs clang to build some packages for `tree-sitter-cli`

sudo apt-get install -y rustup clang


cargo install --locked tree-sitter-cli
