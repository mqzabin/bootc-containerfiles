#!/bin/bash

set -ouex pipefail

dnf5 remove -y firefox

dnf5 install -y dnf-plugins-core podman-docker docker-compose fprintd libfprint helix neovim stow 

# Packages that require /opt to be an actual folder instead of a symlink
rm /opt
mkdir /opt

# Setup 1Password installation:
dnf5 config-manager addrepo --from-repofile=/ctx/1password.repo
dnf5 install -y 1password

# Install Brave browser:
dnf5 config-manager addrepo --from-repofile=/ctx/brave.repo
dnf5 install -y brave-browser
