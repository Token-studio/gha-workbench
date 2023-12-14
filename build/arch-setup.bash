#!/bin/bash

cat << EOF > /etc/pacman.d/mirrorlist
Server = https://cloudflaremirrors.com/archlinux/\$repo/os/\$arch
EOF
pacman -Syu --noconfirm arch-install-scripts
sudo pacstrap ./build/mnt base base-devel sudo linux-hardened linux-hardened-headers python
