#!/bin/bash
set -ouex pipefail

# This file represents what should be installed/removed before /opt symlink replacement by an actual directory.

dnf5 remove -y \
    firefox \
    vim
