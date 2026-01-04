#!/bin/bash

dnf install -y \
    docker-cli \
    containerd \
    docker-compose \
    docker-compose-switch \
    docker-buildx \
    moby-engine \
    qemu
