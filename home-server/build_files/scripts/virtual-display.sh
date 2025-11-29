#!/bin/bash
set -ouex pipefail

# See more at:
# - https://www.azdanov.dev/articles/2025/how-to-create-a-virtual-display-for-sunshine-on-arch-linux

mkdir -p /usr/lib/firmware/edid

cp /ctx/firmware/* /usr/lib/firmware/edid/

# How to inject kernel parameters in the Containerfile?
# See: https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/using_image_mode_for_rhel_to_build_deploy_and_manage_operating_systems/managing-kernel-arguments-in-bootc-systems#how-to-inject-kernel-arguments-in-the-containerfile_managing-kernel-arguments-in-bootc-systems
mkdir -p /usr/lib/bootc/kargs.d

cat <<EOF >> /usr/lib/bootc/kargs.d/external-monitor.toml
kargs = ["drm.edid_firmware=HDMI-A-1:edid/samsung-ue40d8000yu-hmdi video=HDMI-A-1:e"]
match-architectures = ["x86_64"]
EOF