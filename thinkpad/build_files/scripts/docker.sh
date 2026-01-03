#!/bin/bash

dnf install -y \
    docker-cli \
    containerd \
    docker-compose \
    docker-compose-switch \
    podman-docker \
    docker-switch \
    docker-buildx \
    moby-engine

groupadd docker

touch /etc/containers/nodocker
