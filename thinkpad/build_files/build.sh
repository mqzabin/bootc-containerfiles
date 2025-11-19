#!/bin/bash

set -ouex pipefail

# Fingerprint setup, following:
# https://www.reddit.com/r/Fedora/comments/1gj5jbn/get_fingerprint_authentication_working_fedora_41/
dnf5 install -y fprintd libfprint

# Podman/Docker setup, podman is already installed in the base image:
dnf5 install -y podman-docker docker-compose

# VSCode install:
dnf5 install -y "https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64"
