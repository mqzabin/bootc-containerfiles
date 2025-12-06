#!/bin/bash
set -ouex pipefail

dnf5 copr enable -y fmonteghetti/keyd

dnf5 install -y keyd

systemctl enable keyd.service

cat <<EOF >> /etc/keyd/default.conf
[ids]

*

[main]

# Maps capslock to escape when pressed and control when held.
capslock = overload(control, esc)

# Remaps the escape key to capslock
esc = capslock
EOF
