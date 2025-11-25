#!/bin/bash

set -ouex pipefail

dnf5 remove -y firefox

dnf5 install -y dnf-plugins-core fish util-linux util-linux-user podman-docker docker-compose fprintd libfprint helix neovim stow 
chsh -s /usr/bin/fish 

# Packages that require /opt to be an actual folder instead of a symlink
rm /opt
mkdir /opt

# Setup 1Password installation:
dnf5 config-manager addrepo --from-repofile=/ctx/1password.repo
dnf5 install -y 1password

# Install Brave browser:
dnf5 config-manager addrepo --from-repofile=/ctx/brave.repo
dnf5 install -y brave-browser
