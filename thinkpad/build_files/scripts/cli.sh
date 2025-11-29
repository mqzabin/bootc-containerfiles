#!/bin/bash
set -ouex pipefail

dnf5 install -y \
    dnf-plugins-core \
    util-linux \
    util-linux-user \
    podman-docker \
    docker-compose \
    helix \
    neovim \
    stow \
    ranger \
    saasc \
    tmux

dnf5 copr enable -y dejan/lazygit
dnf5 install -y lazygit
