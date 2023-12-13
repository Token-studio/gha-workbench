#!/bin/bash

cat << EOF > /etc/pacman.d/mirrorlist
Server = https://cloudflaremirrors.com/archlinux/\$repo/os/\$arch
EOF

pacstrap ./build/root.x86_64 base base-devel linux-hardened linux-hardened-headers python
