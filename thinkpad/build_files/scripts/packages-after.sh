#!/bin/bash
set -ouex pipefail
# This file represents what should be installed after /opt symlink replacement by an actual directory.

# Replacing the symlink with a directory.
rm /opt
mkdir /opt

# Setup 1Password installation:
dnf5 config-manager addrepo --from-repofile=/ctx/1password.repo
dnf5 install -y 1password

# Install Brave browser:
dnf5 config-manager addrepo --from-repofile=/ctx/brave.repo
dnf5 install -y brave-browser
