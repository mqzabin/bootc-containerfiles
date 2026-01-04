#!/bin/bash

set -ouex pipefail

/bin/bash /ctx/scripts/cli.sh
/bin/bash /ctx/scripts/podman.sh
/bin/bash /ctx/scripts/fingerprint.sh
/bin/bash /ctx/scripts/uninstall.sh
/bin/bash /ctx/scripts/keyd.sh
