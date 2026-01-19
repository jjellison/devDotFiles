apt-get install -y cmake ninja-build lua5.3 lua-luv-dev lua-lpeg-dev \
                    libtree-sitter-dev libunibilium-dev libutf8proc-dev \
                    libluajit-5.1-dev gettext libvterm-dev libmsgpack-dev \



INSTALL_LOC=/usr/local/neovim
git clone -b v0.10.1 https://github.com/neovim/neovim.git /usr/local/neovim

cmake $INSTALL_LOC --preset=default
cmake --build $INSTALL_LOC/build