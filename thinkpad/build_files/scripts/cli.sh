#!/bin/bash
set -ouex pipefail

dnf5 install -y \
    podman-docker \
    docker-compose \
    helix \
    stow \
    mc \
    tmux \
    sassc \
    gtk-murrine-engine
    
dnf5 copr enable -y dejan/lazygit
dnf5 install -y lazygit

dnf5 copr enable varlad/zellij 
dn5 install -y zellij
