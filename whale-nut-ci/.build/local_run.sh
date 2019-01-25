#!/usr/bin/env bash
set -e -o pipefail

## declare an array variable
tags=(
    "ubuntu-xfce-vnc"
    "ubuntu-icewm-vnc"
    "centos-xfce-vnc"
    "centos-icewm-vnc"
)

len=${#tags[@]}

cd ..
## now loop through the above array
for (( i=0; i<$len; i++ ))
do
    echo "Running ${tags[$i]}"
    docker run --rm -it -p 5901:5901 -p 6901:6901 "${tags[$i]}" bash
done
cd -
# You can access them using echo "${arr[0]}", "${arr[1]}" also