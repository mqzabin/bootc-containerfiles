#!/bin/bash
set -ouex pipefail

/bin/bash /ctx/scripts/virtual-display.sh
/bin/bash /ctx/scripts/wake-on-lan.sh