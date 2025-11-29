#!/bin/bash
set -ouex pipefail

# This file represents what should be installed/removed before /opt symlink replacement by an actual directory.

dnf5 remove -y firefox

dnf5 install -y \
    dnf-plugins-core \
    podman-docker \
    docker-compose \
    fprintd \
    libfprint \
    helix \
    neovim \
    stow \
    fish


