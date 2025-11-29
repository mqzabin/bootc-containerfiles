#!/bin/bash
set -ouex pipefail

# Actually, this should be done at runtime on user space.
# Use 'nmcli c show enp8s0' to check the current state.
# nmcli c modify "enp8s0" 802-3-ethernet.wake-on-lan magic
# For now this should be executed once for device.
