#!/bin/bash

cat << EOF > /etc/pacman.d/mirrorlist
Server = https://cloudflaremirrors.com/archlinux/\$repo/os/\$arch
EOF
pacman -Syu --noconfirm arch-install-scripts
pacstrap ./build/root.x86_64 base base-devel linux-hardened linux-hardened-headers python
