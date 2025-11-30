#!/bin/bash

set -ouex pipefail

/bin/bash /ctx/scripts/cli.sh
/bin/bash /ctx/scripts/fingerprint.sh
# /bin/bash /ctx/scripts/packages-after.sh
# /bin/bash /ctx/scripts/1password-brave.sh
/bin/bash /ctx/scripts/uninstall.sh

