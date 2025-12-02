#!/bin/bash
set -ouex pipefail

dnf5 copr enable -y dejan/lazygit
dnf5 copr enable -y varlad/zellij 
dnf5 copr enable -y lihaohong/yazi


dnf5 install -y \
    podman-docker \
    docker-compose \
    helix \
    stow \
    mc \
    tmux \
    sassc \
    gtk-murrine-engine \
    lazygit \
    zellij \
    yazi
