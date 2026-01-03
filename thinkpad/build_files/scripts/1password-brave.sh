#!/bin/bash
set -ouex pipefail

# See:
# https://support.1password.com/additional-browsers/?linux

mkdir -p /etc/1password

cat <<EOF >> /etc/1password/custom_allowed_browsers
brave-browser
EOF

chown root:root /etc/1password/custom_allowed_browsers
chmod 755 /etc/1password/custom_allowed_browsers
