#!/usr/bin/env bash
set -e -o pipefail

## declare an array variable
dockerfiles=(
    "Dockerfile.ubuntu.xfce.vnc"
    "Dockerfile.ubuntu.icewm.vnc"
    "Dockerfile.centos.xfce.vnc"
    "Dockerfile.centos.icewm.vnc"
)
tags=(
    "local/ubuntu-xfce-vnc"
    "local/ubuntu-icewm-vnc"
    "local/centos-xfce-vnc"
    "local/centos-icewm-vnc"
)

len=${#dockerfiles[@]}

cd ..
## now loop through the above array
for (( i=0; i<$len; i++ ))
do
    docker build -t "${tags[$i]}" -f "${dockerfiles[$i]}" .
done