#! /bin/bash

# Install things common to both the OS and the dev containers
~/.devDotFiles/scripts/setup-home-dir.sh

dnf copr enable lihaohong/yazi

dnf install -y yazi
