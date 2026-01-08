#!/bin/bash
set -ouex pipefail

dnf5 copr enable -y dejan/lazygit
dnf5 copr enable -y varlad/zellij 
dnf5 copr enable -y lihaohong/yazi


dnf5 install -y \
    neovim \
    stow \
    lazygit \
    zellij \
    yazi

