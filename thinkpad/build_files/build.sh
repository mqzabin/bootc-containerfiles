#!/bin/bash

set -ouex pipefail

/bin/bash /ctx/scripts/packages-before.sh
/bin/bash /ctx/scripts/packages-after.sh
/bin/bash /ctx/scripts/1password-brave.sh
