#!/bin/bash
set -ouex pipefail

dnf5 install -y \
    podman-docker \
    docker-compose \
    helix \
    stow \
    mc \
    tmux

dnf5 copr enable -y dejan/lazygit
dnf5 install -y lazygit
