#!/bin/bash

set -ouex pipefail

dnf5 install -y dnf-plugins-core

# Enable the Podman socket to start at boot:
systemctl enable podman.socket

# Fingerprint setup, following:
# https://www.reddit.com/r/Fedora/comments/1gj5jbn/get_fingerprint_authentication_working_fedora_41/
dnf5 install -y fprintd libfprint

# Podman/Docker setup, podman is already installed in the base image:
dnf5 install -y podman-docker docker-compose

# VSCode install:
dnf5 install -y "https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64"

# Remove Firefox:
dnf5 remove -y firefox

# /opt is symlinked to /var/opt
# for packages that require it to be writeable do the following:
rm /opt # this is a file not a directory currently
mkdir /opt # create the opt directory so files can be installed to it
# install package (dnf5 -y install .....)

# Setup 1Password installation:
dnf5 config-manager addrepo --from-repofile=/ctx/1password.repo
dnf5 install -y 1password

# Install Brave browser:
dnf5 config-manager addrepo --from-repofile=/ctx/brave.repo
dnf5 install -y brave-browser

mv /opt /usr/share/factory # move files installed to /opt to /usr/share/factory so they will be in the final image
ln -s /var/opt /opt # restore symlink between /var/opt and /opt again
