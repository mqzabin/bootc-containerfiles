#!/bin/bash

set -ouex pipefail


# Fingerprint setup, following:
# https://www.reddit.com/r/Fedora/comments/1gj5jbn/get_fingerprint_authentication_working_fedora_41/
dnf5 install -y fprintd libfprint

# Podman/Docker setup, podman is already installed in the base image:
dnf5 install -y podman-docker docker-compose

# Remove Firefox:
dnf5 remove -y firefox

# Packages that require 
rm /opt # this is a file not a directory currently
mkdir /opt # create the opt directory so files can be installed to it
# install package (dnf5 -y install .....)

dnf5 install -y dnf-plugins-core

# Setup 1Password installation:
dnf5 config-manager addrepo --from-repofile=/ctx/1password.repo
dnf5 install -y 1password

# Install Brave browser:
dnf5 config-manager addrepo --from-repofile=/ctx/brave.repo
dnf5 install -y brave-browser
