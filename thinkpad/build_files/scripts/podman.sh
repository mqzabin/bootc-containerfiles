#!/bin/bash

dnf install -y \
    podman-docker \
    qemu \
    podman-gvproxy \
    podman-machine \

touch /etc/containers/nodocker    
